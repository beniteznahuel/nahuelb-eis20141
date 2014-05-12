require 'rspec'
require_relative '../lib/Perro.rb'

describe 'Ordenamiento de perros' do

	it 'Cuando creo un perro negro este debe ser negro' do
		perro = Perro.new("negro", 5, 3)
		perro.color.should == "negro"
	end

	it 'Cuando creo un perro blanco con 5 anhos este debe ser negro y tener 5 anhos' do
		perro = Perro.new("blanco", 5, 2)
		perro.color.should == "blanco"
		perro.edad.should == 5
	end

	it 'Cuando creo un perro marron con 10 anhos y pese 8 kg este debe ser marron tener 10 anhos y pesar 8 kg' do

		perro = Perro.new("marron", 10, 8)
		perro.color.should == "marron"
		perro.edad.should == 10
		perro.peso.should == 8
	end

	it 'Cuando tengo un perro de 2 anhos y otro 5, en un array debe estar primero el de 2 anhos' do

		perroConDosAnhos = Perro.new("marron", 2, 5)
		perroConCincoAnhos = Perro.new("marron", 5, 8)
		ar = []
		ar.push(perroConCincoAnhos)
		ar.push(perroConDosAnhos)
		ar = ar.sort {|p1, p2| p2 <=> p1 }
		ar[0].should == perroConDosAnhos
	end

	it 'Cuando tengo un perro de 2 anhos, otro de 5 y otro de 1 anho, en un array debe estar primero el de 1 anho, segundo el de 2 anhos y tercero el de 5 anhos.' do
		perroConDosAnhos = Perro.new("marron", 2, 5)
		perroConCincoAnhos = Perro.new("marron", 5, 8)
		perroConUnAnho = Perro.new("marron", 1, 1)
		ar = []
		ar.push(perroConCincoAnhos)
		ar.push(perroConUnAnho)		
		ar.push(perroConDosAnhos)		
		ar = ar.sort {|p1, p2| p2 <=> p1 }
		ar[0].should == perroConUnAnho
		ar[1].should == perroConDosAnhos
		ar[2].should == perroConCincoAnhos
	end

	it 'Cuando tengo un perro de 2 anhos que pesa 5kg, otro de 2 anhos y pesa 3 kg otro de 1 anho que pesa 8kg, en un array debe estar primero el de un anho, segundo el de 3kg y tercero el de 5kg' do

		perroConDosAnhosY5Kg = Perro.new("marron", 2, 5)
		perroConDosAnhosY3Kg = Perro.new("marron", 2, 3)
		perroConUnAnho = Perro.new("marron", 1, 8)
		ar = []
		ar.push(perroConDosAnhosY3Kg)
		ar.push(perroConDosAnhosY5Kg)
		ar.push(perroConUnAnho)
		ar = ar.sort {|p1, p2| p2 <=> p1 }
		ar[0].should == perroConUnAnho
		ar[1].should == perroConDosAnhosY3Kg
		ar[2].should == perroConDosAnhosY5Kg
	end

	it 'Cuando tengo un perro blanco, otro negro, otro gris y otro marron, ordenados en un array deberian quedar primero el blanco, segundo el negro, tercero el marron y en la cuarta posicion el gris' do

		perroBlanco = Perro.new("blanco", 2, 2)
		perroNegro = Perro.new("negro", 2, 2)
		perroMarron = Perro.new("marron", 2, 2)
		perroGris = Perro.new("gris", 2, 2)
		ar = []
		ar.push(perroMarron)
		ar.push(perroGris)
		ar.push(perroNegro)
		ar.push(perroBlanco)
		ar = ar.sort {|p1, p2| p2 <=> p1 }
		ar[0].should == perroBlanco
		ar[1].should == perroNegro
		ar[2].should == perroMarron
		ar[3].should == perroGris
	end
end
