<?php

/**
 * NewsTable
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class NewsTable extends Doctrine_Table
{
    /**
     * Returns an instance of this class.
     *
     * @return object NewsTable
     */
    public static function getInstance()
    {
        return Doctrine_Core::getTable('News');
    }
}