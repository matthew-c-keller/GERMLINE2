all:
	g++ -O2 -o germline9.1 -I include GERMLINE_0001.cpp GERMLINE.cpp Share.cpp Chromosome.cpp ChromosomePair.cpp HMIndividualsExtractor.cpp MarkerSet.cpp Individual.cpp Individuals.cpp InputManager.cpp MatchFactory.cpp MatchesBuilder.cpp NucleotideMap.cpp PEDIndividualsExtractor.cpp Match.cpp PolymorphicIndividualsExtractor.cpp SNP.cpp SNPPositionMap.cpp SNPs.cpp
run1:
	./germline9.1 -mapfile ./Beagle.Phased.Group2.1k.map -pedfile ./Beagle.Phased.Group2.1k.ped -outfile GL_OUT -bin_out -bits 20 -err_hom 0 -err_het 0 -min_m 3 -homoz  -w_extend -h_extend 
run2:
	./germline9.1 -mapfile ./22.test.map -pedfile ./22.test.ped -outfile GL_OUT -bin_out -bits 20 -err_hom 0 -err_het 0 -min_m 3 -homoz  -w_extend -h_extend 
clean:
	rm -rf *.bmatch *.bsid *.bmid *.log

