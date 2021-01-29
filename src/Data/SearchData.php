<?php

namespace App\Data;

class SearchData
{

    /**
     * @var string
     */
    public $q = '';

    /**
     * @var Gender[]
     */
    public $genders= [];

    /**
     * @var null|integer
     */
    public $max;

    /**
     * @var null|integer
     */
    public $min;

}