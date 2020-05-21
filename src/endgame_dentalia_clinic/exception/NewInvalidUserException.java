/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package endgame_dentalia_clinic.exception;

/**
 *
 * @author Karim
 */
public class NewInvalidUserException extends Exception {

    /**
     * Creates a new instance of <code>NewInvalidUserException</code> without
     * detail message.
     */
    public NewInvalidUserException() {
    }

    /**
     * Constructs an instance of <code>NewInvalidUserException</code> with the
     * specified detail message.
     *
     * @param msg the detail message.
     */
    public NewInvalidUserException(String msg) {
        super(msg);
    }
}
