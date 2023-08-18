<?php

namespace App\Admin\Controllers;

use App\Models\Product;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ProductController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Product';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Product());

        $grid->column('id', __('Id'));
        $grid->column('name', __('Name'));
        $grid->column('price', __('Price'));
        $grid->column('img')->image('','100','100');
        $grid->column('description', __('Description'));
        $grid->column('description_long', __('Description_long'));
        $grid->column('categoryID', __('CategoryID'));
        $grid->column('sex', __('Sex'));
        $grid->column('sold', __('Sold'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Product::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('price', __('Price'));
        $show->field('img');
        $show->field('description', __('Description'));
        $show->field('description_long', __('Description_long'));
        $show->field('categoryID', __('CategoryID'));
        $show->field('sex', __('Sex'));
        $show->field('sold', __('Sold'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Product());

        $form->text('name', __('Name'));
        $form->decimal('price', __('Price'));
        $form->image('img', __('Img'));
        $form->text('description', __('Description'));
        $form->text('description_long', __('Description_long'));
        $form->number('categoryID', __('CategoryID'));
        $form->text('sex', __('Sex'));
        $form->number('sold', __('Sold'));

        return $form;
    }
}
