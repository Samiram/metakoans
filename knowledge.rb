class Module

def attribute(attr)
	instance_variable_set("@#{attr}",nil)

	define_method "#{attr}=".to_sym do |args|
		instance_variable_set("@#{attr}",nil)

end
define_method "#{attr}?".to_sym do
	if instance_variable_defined? "@#{attr}"
		false else true
	end
end

end
end