
$mostlyopaque

$ModelName dynamicrp/items/cell_phone

$model CellPhone cellphone_reference

$SurfaceProp computer

$CDMaterials models/dynamicrp/items/cellphone

$TextureGroup "skinfamilies"
{
	{ "screen"            "screen_overlay"       }
	{ "screen_off"        "screen_overlay"       }
	{ "screen_home"       "screen_overlay"       }
	{ "screen_phone"      "screen_overlay"       }
	{ "screen_rt"         "screen_overlay_rt_2"  }
	{ "screen_texts"      "screen_overlay"       }
	{ "screen_ab"         "screen_overlay"       }
	{ "screen_map"        "screen_overlay_map"   }
	{ "screen_rt"         "screen_overlay_rt"    }
	{ "screen_code"       "screen_overlay_code"  }
	{ "screen_home_crack" "screen_overlay_crack" }
	{ "screen_green"      "screen_overlay"       }
}

$BBox -2.963 -1.724 -0.277 3.283 1.621 0.7


$Sequence "idle" {
	"cellphone_anim_@idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$CollisionModel "cellphone_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
