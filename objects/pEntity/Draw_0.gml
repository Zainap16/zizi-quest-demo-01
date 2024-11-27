/// @descriptiowhite flash
if (flash != 0)
{
shader_set(shWhiteFlash)
shader_set_uniform_f(uFlash, flash);
}
draw_self();
if (shader_current() != -1) shader_reset();










