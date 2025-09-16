package com.example.methodchannel

import android.widget.Toast
import com.google.android.material.dialog.MaterialAlertDialogBuilder
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val CHANNEL = "com.meuapp.nativo/dialogos"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        val channel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)

        channel.setMethodCallHandler { call, result ->
            when (call.method) {
                "mostrarToast" -> {
                    val mensagem = call.argument<String>("mensagem")
                    if (mensagem != null) {
                        Toast.makeText(this, mensagem, Toast.LENGTH_LONG).show()
                        result.success(null)
                    } else {
                        result.error("ARGUMENTOS_INVALIDOS", "Mensagem não pode ser nula", null)
                    }
                }
                "mostrarDialogo" -> {
                    val titulo = call.argument<String>("titulo")
                    val mensagem = call.argument<String>("mensagem")

                    if (titulo != null && mensagem != null) {
                        runOnUiThread {
                            MaterialAlertDialogBuilder(this@MainActivity)
                                .setTitle(titulo)
                                .setMessage(mensagem)
                                .setPositiveButton("Sim") { dialog, _: Int ->
                                    Toast.makeText(this, "Clicou em YES", Toast.LENGTH_SHORT).show()
                                    dialog.dismiss()
                                }
                                .setNegativeButton("Não") { dialog, _: Int ->
                                    Toast.makeText(this, "Clicou em NO", Toast.LENGTH_SHORT).show()
                                    dialog.dismiss()
                                }
                                .setNeutralButton("Cancelar") { dialog, _: Int ->
                                    Toast.makeText(this, "Clicou em Cancelar", Toast.LENGTH_SHORT).show()
                                    dialog.dismiss()
                                }
                                .show()
                        }
                        result.success(null)
                    } else {
                        result.error("ARGUMENTOS_INVALIDOS", "Título ou mensagem nulos", null)
                    }
                }
                else -> {
                    result.notImplemented()
                }
            }
        }
    }
}
