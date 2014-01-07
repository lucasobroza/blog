module ApplicationHelper
	def sn(status)
		(status) ? "SIM" : "NÃO"
	end
end
def human_boolean(boolean)
    boolean ? 'Sim' : 'Não'
end