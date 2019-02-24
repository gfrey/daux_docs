<?php namespace Todaymade\Daux\Extension;

use Todaymade\Daux\Tree\Root;

class DocProc extends \Todaymade\Daux\Processor
{
	# Files to filter from the tree; keep in mind that target files are
	# filtered (not source, i.e. the file extension is `.html` not `.md`.
	public static $file_filters = array(
		"/^\..*\.swp$/",
		"/.draft.html$/",
	);

	public function manipulateTree(Root $root)
	{
		foreach($root as $name => $value) {
			foreach(self::$file_filters as $filter) {
				if (preg_match($filter, basename($name)) > 0) {
					unset($root[$name]);
					break;
				}
			}
		}
	}
}

