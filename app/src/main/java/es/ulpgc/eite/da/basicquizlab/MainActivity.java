package es.ulpgc.eite.da.basicquizlab;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {


  private Button falseButton, trueButton, cheatButton, nextButton;
  private TextView questionText, replyText;

  private String[] questionArray;
  private int questionIndex = 0;
  private int[] replyArray;


  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.activity_main);


    initLayoutData();
    linkLayoutComponents();

    initLayoutContent();
  }

  // metodo para cargar los datos de pantalla
  private void initLayoutData() {
    // preguntas cuestionario cargadas desde fichero de recursos
    questionArray = getResources().getStringArray(R.array.question_array);
    // respuestas cuestionario cargadas desde fichero de recursos
    replyArray = getResources().getIntArray(R.array.reply_array);
  }


  private void linkLayoutComponents() {
    falseButton = findViewById(R.id.falseButton);
    falseButton.setEnabled(true);
    trueButton = findViewById(R.id.trueButton);
    trueButton.setEnabled(true);
    nextButton = findViewById(R.id.nextButton);
    nextButton.setEnabled(false);

    cheatButton = findViewById(R.id.cheatButton);


    questionText = findViewById(R.id.questionText);
    replyText = findViewById(R.id.replyText);
  }


  private void initLayoutContent() {
    falseButton.setText(R.string.false_button_text);
    trueButton.setText(R.string.true_button_text);
    nextButton.setText(R.string.next_button_text);
    cheatButton.setText(R.string.cheat_button_text);

    //TODO: refactorizar en un método este codigo repetido
    questionText.setText(questionArray[questionIndex]);
    replyText.setText(R.string.empty_text);
  }

  //TODO: impedir que podamos hacer click en el boton
  // si ya hemos contestado a la pregunta
  public void onTrueButtonClick(View view) {
     if (replyArray[questionIndex] == 1) {
       // correct
       replyText.setText(R.string.correct_text);

      falseButton.setEnabled(false);
       nextButton.setEnabled(true);
     } else {
       // incorrect
       replyText.setText(R.string.incorrect_text);
   }

  }
  //TODO: impedir que podamos hacer click en el boton
  // si ya hemos contestado a la pregunta
  public void onFalseButtonClick(View view) {
      if (replyArray[questionIndex] == 0) {
        // correct
        replyText.setText(R.string.correct_text);
        trueButton.setEnabled(false);
        nextButton.setEnabled(true);
      } else {
        // incorrect
        replyText.setText(R.string.incorrect_text);
      }


  }

  //TODO: impedir que podamos hacer click en el boton
  // si aun no hemos contestado a la pregunta
  public void onNextButtonClick(View view) {

    questionIndex++;
    //onTrueButtonClick(view);
    //onFalseButtonClick(view);
    // hacemos que si llegamos al final del quiz
    // volvamos a empezarlo nuevamente
    //TODO: refactorizar en un método este codigo
    // por si queremos implementar otras opciones posibles
    if(questionIndex == questionArray.length) {
      questionIndex=0;
    }


    //TODO: refactorizar en un método este codigo repetido
    questionText.setText(questionArray[questionIndex]);
    replyText.setText(R.string.empty_text);
  }

    }






 /* //TODO: en vez de usar un metodo para cada boton, podemos
  // hacerlo usando un solo metodo para todos los botones
  public void onButtonClick(View view) {

    switch (view.getId()) {
      case R.id.falseButton:
        onFalseButtonClick(view);
      case R.id.trueButton:
        onTrueButtonClick(view);
      case R.id.nextButton:
        onNextButtonClick(view);
      case R.id.cheatButton:
        onCheatButtonClick(view);
    }

  }


  //TODO: implementar boton para pasar a siguiente pantalla
  public void onCheatButtonClick(View view) {
    // no implementado
  }
  */



