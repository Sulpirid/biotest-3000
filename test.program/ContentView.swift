// created by Lukáš Madej on 01/12/2025

import SwiftUI

// MARK: - MODELY

struct Question: Identifiable {
    let id = UUID()
    let text: String
    let options: [String]
    let correctIndex: Int
    let explanation: String
}

struct Module: Identifiable {
    let id = UUID()
    let name: String
    let color: Color
    let questions: [Question]
}

// MARK: - TU VLOŽ SVOJE POLIA S OTÁZKAMI

// Sem prilep všetky svoje:
// ---------- VITAMÍNY (30 otázok) ----------

let vitaminyQuestions: [Question] = [
    // 1
    Question(
        text: "Ktoré vitamíny sú rozpustné v tukoch?",
        options: [
            "A) Vitamíny skupiny B a C",
            "B) A, D, E, K",
            "C) Len vitamín D",
            "D) A, C, B₁₂, K"
        ],
        correctIndex: 1,
        explanation: "Vitamíny A, D, E a K sú lipofilné, ukladajú sa v tukovom tkanive a pri nadbytku môžu spôsobiť hypervitaminózu. Ostatné (B, C) sú rozpustné vo vode."
    ),
    // 2
    Question(
        text: "Ktoré vitamíny sú rozpustné vo vode?",
        options: [
            "A) A, D, E, K",
            "B) B-komplex a vitamín C",
            "C) Len vitamín C",
            "D) Len B₁₂ a kyselina listová"
        ],
        correctIndex: 1,
        explanation: "Vitamíny skupiny B a vitamín C sú hydrofilné, neukladajú sa vo veľkej miere, prebytok sa vylučuje močom. Nedostatok vzniká skôr než pri A, D, E, K."
    ),
    // 3
    Question(
        text: "Ktorý vitamín je najviac spojený s funkciou zrakového pigmentu rodopsínu?",
        options: [
            "A) Vitamín A",
            "B) Vitamín C",
            "C) Vitamín D",
            "D) Vitamín K"
        ],
        correctIndex: 0,
        explanation: "Retinal (derivát vitamínu A) je súčasťou rodopsínu v tyčinkách. Deficit → poruchy videnia za šera (hemeralopia, tzv. nočná slepota)."
    ),
    // 4
    Question(
        text: "Typickým príznakom hypervitaminózy A môže byť:",
        options: [
            "A) Krivica",
            "B) Skorbut",
            "C) Suchosť kože, bolesti hlavy, poškodenie pečene",
            "D) Porucha koagulácie s krvácaním"
        ],
        correctIndex: 2,
        explanation: "Nadbytok vitamínu A (hlavne z doplnkov) sa prejavuje bolesťami hlavy, nauzeou, suchou kožou, hepatotoxicitou a pri extrémoch aj intrakraniálnou hypertenziou."
    ),
    // 5
    Question(
        text: "Nedostatok ktorého vitamínu vedie u detí ku krivici?",
        options: [
            "A) Vitamín A",
            "B) Vitamín C",
            "C) Vitamín D",
            "D) Vitamín K"
        ],
        correctIndex: 2,
        explanation: "Vitamín D je nevyhnutný pre vstrebávanie Ca²⁺ a fosfátov a správnu mineralizáciu kostí. Deficit u detí → rachitis (krivica), u dospelých osteomalácia."
    ),
    // 6
    Question(
        text: "Hlavným zdrojom vitamínu D pre človeka je:",
        options: [
            "A) Výlučne strava, telo si ho nevie syntetizovať",
            "B) Syntéza v koži pôsobením UVB žiarenia",
            "C) Produkcia črevnou mikrobiotou",
            "D) Endogénna produkcia v kostnej dreni"
        ],
        correctIndex: 1,
        explanation: "Najväčší podiel vitamínu D vzniká v koži z 7-dehydrocholesterolu po expozícii UVB. Strava je dôležitá, ale sekundárna."
    ),
    // 7
    Question(
        text: "Ktorý vitamín je kľúčový pre syntézu koagulačných faktorov v pečeni?",
        options: [
            "A) Vitamín A",
            "B) Vitamín K",
            "C) Vitamín B₁₂",
            "D) Vitamín E"
        ],
        correctIndex: 1,
        explanation: "Vitamín K je potrebný na karboxyláciu viacerých koagulačných faktorov (II, VII, IX, X). Bez neho vzniká krvácavosť."
    ),
    // 8
    Question(
        text: "Ktorý vitamín je významný antioxidant chrániaci lipidové membrány?",
        options: [
            "A) Vitamín E",
            "B) Vitamín B₁",
            "C) Vitamín C",
            "D) Vitamín K"
        ],
        correctIndex: 0,
        explanation: "Vitamín E (tokoferoly) chráni nenasýtené mastné kyseliny v membránach pred peroxidáciou. Vitamín C je antioxidant skôr vo vodnom prostredí."
    ),
    // 9
    Question(
        text: "Skorbut vzniká pri deficite:",
        options: [
            "A) Vitamínu A",
            "B) Vitamínu C",
            "C) Vitamínu D",
            "D) Vitamínu B₁₂"
        ],
        correctIndex: 1,
        explanation: "Vitamín C je potrebný pre hydroxyláciu prolínu a lyzínu pri syntéze kolagénu. Deficit → krvácavosť, poruchy hojenia, bolesti kĺbov, uvoľnenie zubov."
    ),
    // 10
    Question(
        text: "Nedostatok vitamínu B₁ (tiamínu) vedie klasicky k:",
        options: [
            "A) Beri-beri a Wernicke-Korsakoffovmu syndrómu",
            "B) Pellagre",
            "C) Skorbtu",
            "D) Krivici"
        ],
        correctIndex: 0,
        explanation: "Tiamín je kofaktor v metabolizme sacharidov. Jeho deficit sa prejavuje polyneuropatiou (beri-beri) a encefalopatiou, najmä pri alkoholizme."
    ),
    // 11
    Question(
        text: "Nedostatok vitamínu B₃ (niacínu) spôsobuje ochorenie:",
        options: [
            "A) Pellagra (dermatitída, diarrhoea, dementia)",
            "B) Beri-beri",
            "C) Skorbut",
            "D) Hemolytickú anémiu"
        ],
        correctIndex: 0,
        explanation: "Klasická triáda pellagry sú 3D: dermatitída, diarrhoea, dementia. Niacín je súčasť NAD⁺/NADP⁺."
    ),
    // 12
    Question(
        text: "Ktorý vitamín je dôležitý pre tvorbu myelínu a krvotvorbu?",
        options: [
            "A) Vitamín B₁",
            "B) Vitamín B₆",
            "C) Vitamín B₁₂",
            "D) Vitamín C"
        ],
        correctIndex: 2,
        explanation: "B₁₂ je kľúčový pre syntézu DNA v kostnej dreni a pre správnu myelinizáciu. Deficit → megaloblastová anémia a neuropatia."
    ),
    // 13
    Question(
        text: "Kyselina listová (vitamín B₉) je dôležitá najmä pre:",
        options: [
            "A) Tvorbu rodopsínu",
            "B) Tvorbu kolagénu",
            "C) Syntézu nukleových kyselín a delenie buniek",
            "D) Aktivitu koagulačných faktorov"
        ],
        correctIndex: 2,
        explanation: "Folát je potrebný pre syntézu purínov a tymidínu; deficit → megaloblastová anémia a poruchy rýchlo sa deliaceho tkaniva."
    ),
    // 14
    Question(
        text: "Nedostatok folátu v gravidite je spojený s:",
        options: [
            "A) Krivicou novorodenca",
            "B) Defektom neurálnej trubice plodu",
            "C) Skorbtu",
            "D) Tetániou"
        ],
        correctIndex: 1,
        explanation: "Nedostatočný príjem folátu pred počatím a v ranom tehotenstve zvyšuje riziko spina bifida a ďalších defektov neurálnej trubice."
    ),
    // 15
    Question(
        text: "Kde sa fyziologicky vstrebáva vitamín B₁₂?",
        options: [
            "A) V žalúdku",
            "B) V duodene",
            "C) V ileu (terminálne tenké črevo) v komplexe s intrinsic factorom",
            "D) V hrubom čreve"
        ],
        correctIndex: 2,
        explanation: "B₁₂ sa viaže na intrinsic factor zo žalúdka a tento komplex sa vstrebáva v terminálnom ileu."
    ),
    // 16
    Question(
        text: "Ktorý vitamín zlepšuje absorpciu nehemového železa v čreve?",
        options: [
            "A) Vitamín A",
            "B) Vitamín B₁",
            "C) Vitamín C",
            "D) Vitamín K"
        ],
        correctIndex: 2,
        explanation: "Vitamín C redukuje Fe³⁺ na lepšie vstrebateľnú formu Fe²⁺ a tým podporuje absorpciu železa."
    ),
    // 17
    Question(
        text: "Ktorý vitamín najčastejšie chýba u prísnych vegánov bez suplementácie?",
        options: [
            "A) Vitamín C",
            "B) Vitamín B₁₂",
            "C) Vitamín D",
            "D) Vitamín K"
        ],
        correctIndex: 1,
        explanation: "B₁₂ je takmer výlučne v živočíšnych produktoch. Vegáni bez suplementácie sú rizikoví na deficit a megaloblastovú anémiu."
    ),
    // 18
    Question(
        text: "Čo platí o hypervitaminóze vitamínu D?",
        options: [
            "A) Nemôže nastať, telo všetok prebytok vylúči",
            "B) Vedie k hypokalémii",
            "C) Vedie k hyperkalcémii a kalcifikácii tkanív",
            "D) Spôsobuje skorbut"
        ],
        correctIndex: 2,
        explanation: "Nadbytok D môže spôsobiť hyperkalcémiu, nefrokalcinózu, kalcifikáciu ciev a tkanív."
    ),
    // 19
    Question(
        text: "Nadbytok vitamínu C z doplnkov môže u predisponovaných jedincov spôsobiť:",
        options: [
            "A) Krvácavosť",
            "B) Tvorbu oxalátových obličkových kameňov",
            "C) Krivicu",
            "D) Megaloblastovú anémiu"
        ],
        correctIndex: 1,
        explanation: "Vysoké dávky vitamínu C môžu zvýšiť vylučovanie oxalátov a podporiť tvorbu obličkových kameňov."
    ),
    // 20
    Question(
        text: "Ktorý vitamín je kľúčovým kofaktorom transamináz v metabolizme aminokyselín?",
        options: [
            "A) Vitamín B₁",
            "B) Vitamín B₂",
            "C) Vitamín B₆ (pyridoxín)",
            "D) Vitamín B₁₂"
        ],
        correctIndex: 2,
        explanation: "Pyridoxín (B₆) je koenzým transamináz a dekarboxyláz aminokyselín; jeho nedostatok vedie k neuropatiám a poruche syntézy neurotransmiterov."
    ),
    // 21
    Question(
        text: "Ktorý vitamín sa podieľa na karboxyláciách ako biotín-dependentný kofaktor?",
        options: [
            "A) Vitamín B₃",
            "B) Vitamín B₇ (biotín)",
            "C) Vitamín B₂",
            "D) Vitamín B₅"
        ],
        correctIndex: 1,
        explanation: "Biotín je kofaktor karboxyláz, zúčastňuje sa glukoneogenézy, syntézy mastných kyselín a metabolizmu aminokyselín."
    ),
    // 22
    Question(
        text: "Ktorý vitamín je súčasťou koenzýmu A?",
        options: [
            "A) Vitamín B₅ (kyselina pantoténová)",
            "B) Vitamín B₂",
            "C) Vitamín B₁",
            "D) Vitamín B₉"
        ],
        correctIndex: 0,
        explanation: "Kyselina pantoténová je súčasťou koenzýmu A, ktorý prenáša acylové skupiny v mnohých metabolických dráhach."
    ),
    // 23
    Question(
        text: "Ktorý vitamín je typicky spájaný s nočnou slepotou pri jeho nedostatku?",
        options: [
            "A) Vitamín A",
            "B) Vitamín E",
            "C) Vitamín D",
            "D) Vitamín K"
        ],
        correctIndex: 0,
        explanation: "Deficit vitamínu A vedie k poruche adaptácie na tmu a k xerophthalmii až slepote."
    ),
    // 24
    Question(
        text: "Ktorý vitamín je kľúčový pri syntéze kolagénu?",
        options: [
            "A) Vitamín C",
            "B) Vitamín A",
            "C) Vitamín D",
            "D) Vitamín B₁₂"
        ],
        correctIndex: 0,
        explanation: "Vitamín C je nevyhnutný pre hydroxyláciu prolínu a lyzínu v kolagéne. Bez toho je kolagén nekvalitný."
    ),
    // 25
    Question(
        text: "Čo je spoločné pre vitamíny A, D, E, K?",
        options: [
            "A) Vylučujú sa iba močom",
            "B) Sú rozpustné vo vode",
            "C) Ukladajú sa v tele a riziko hypervitaminózy je vyššie",
            "D) Tvoria sa len v čreve"
        ],
        correctIndex: 2,
        explanation: "Lipofilné vitamíny sa môžu akumulovať v tukovom tkanive a pečeni, preto je riziko predávkovania vyššie než pri hydrofilných vitamínoch."
    ),
    // 26
    Question(
        text: "Ktorý vitamín zohráva významnú úlohu pri tvorbe erytrocytov spolu s B₁₂?",
        options: [
            "A) Vitamín K",
            "B) Vitamín B₉ (kyselina listová)",
            "C) Vitamín E",
            "D) Vitamín A"
        ],
        correctIndex: 1,
        explanation: "Folát a B₁₂ sú kritické pre syntézu DNA v krvotvorbe; deficit jedného alebo druhého vedie k megaloblastovej anémii."
    ),
    // 27
    Question(
        text: "Črevná mikrobiota významne prispieva k zásobe ktorého vitamínu?",
        options: [
            "A) Vitamín K",
            "B) Vitamín C",
            "C) Vitamín D",
            "D) Vitamín A"
        ],
        correctIndex: 0,
        explanation: "Baktérie hrubého čreva produkujú časť vitamínu K, čo vysvetľuje, prečo sa deficit K objaví napr. po dlhodobej širokospektrálnej ATB liečbe."
    ),
    // 28
    Question(
        text: "Ktorý vitamín je dôležitý pre správnu funkciu retina a epitelov?",
        options: [
            "A) Vitamín A",
            "B) Vitamín B₆",
            "C) Vitamín C",
            "D) Vitamín B₂"
        ],
        correctIndex: 0,
        explanation: "Vitamín A je dôležitý pre zrak a udržiavanie difereciácie epitelových buniek. Deficit → keratinizácia epitelov."
    ),
    // 29
    Question(
        text: "Aký typ anémie vzniká pri dlhodobom deficite vitamínu B₁₂ alebo folátu?",
        options: [
            "A) Mikrocytová hypochrómna anémia",
            "B) Makrocytová megaloblastová anémia",
            "C) Aplastická anémia",
            "D) Hemolytická anémia"
        ],
        correctIndex: 1,
        explanation: "Porucha syntézy DNA vedie k tvorbe veľkých nezrelých erytrocytov – megaloblastov, čiže makrocytovej anémii."
    ),
    // 30
    Question(
        text: "Prečo sa hydrofilné vitamíny (B, C) musia pravidelne dopĺňať?",
        options: [
            "A) Ukladajú sa v tukovom tkanive",
            "B) Organizmus ich nevie vstrebať",
            "C) Majú malé zásoby a prebytok sa vylučuje močom",
            "D) Sú toxické už v malých dávkach"
        ],
        correctIndex: 2,
        explanation: "Vitamíny B a C sa výrazne neukladajú a ich prebytok sa ľahko vylúči močom, preto je nutný pravidelný príjem."
    )
]
// ---------- IMUNITA (30 otázok) ----------

let imunitaQuestions: [Question] = [
    // 1
    Question(
        text: "Vrodená (nešpecifická) imunita je charakteristická tým, že:",
        options: [
            "A) Reaguje pomaly, ale veľmi špecificky",
            "B) Reaguje rýchlo, ale menej špecificky",
            "C) Vzniká len po očkovaní",
            "D) Nepodieľa sa na zápale"
        ],
        correctIndex: 1,
        explanation: "Innate imunita reaguje rýchlo (minúty až hodiny) na typické molekulové vzory patogénov (PAMPs), ale nie je vysoko špecifická pre konkrétny antigén."
    ),
    // 2
    Question(
        text: "Adaptívna (získaná) imunita je charakteristická tým, že:",
        options: [
            "A) Je rovnako rýchla ako vrodená",
            "B) Je pomalšia, ale veľmi špecifická a má pamäť",
            "C) Nemá pamäť",
            "D) Nepotrebuje antigén na aktiváciu"
        ],
        correctIndex: 1,
        explanation: "Adaptívna imunita sa rozbieha dni, ale je antigén-špecifická a vytvára pamäťové bunky, čo umožňuje rýchlejšiu sekundárnu odpoveď."
    ),
    // 3
    Question(
        text: "Do vrodenej imunity nepatrí:",
        options: [
            "A) Koža a sliznice",
            "B) Komplement a fagocyty",
            "C) T-lymfocyty a B-lymfocyty",
            "D) NK bunky"
        ],
        correctIndex: 2,
        explanation: "T a B lymfocyty sú kľúčové bunky adaptívnej imunity. Koža, komplement, fagocyty a NK patria k vrodenej."
    ),
    // 4
    Question(
        text: "Ktorá bunka je hlavná pri fagocytóze baktérií v akútnej fáze zápalu?",
        options: [
            "A) Neutrofilný granulocyt",
            "B) Eozinofil",
            "C) Bazofil",
            "D) Erytrocyt"
        ],
        correctIndex: 0,
        explanation: "Neutrofily sú hlavné fagocyty akútnych bakteriálnych infekcií, prichádzajú medzi prvými do ložiska zápalu."
    ),
    // 5
    Question(
        text: "Makrofágy vznikajú z:",
        options: [
            "A) T-lymfocytov",
            "B) B-lymfocytov",
            "C) Monocytov",
            "D) Eozinofilov"
        ],
        correctIndex: 2,
        explanation: "Monocyty v tkanive dozrievajú na makrofágy, ktoré fagocytujú, prezentujú antigén a produkujú cytokíny."
    ),
    // 6
    Question(
        text: "Ktoré bunky produkujú protilátky?",
        options: [
            "A) Cytotoxické T-lymfocyty",
            "B) NK bunky",
            "C) Plazmatické bunky (diferencované B-lymfocyty)",
            "D) Neutrofily"
        ],
        correctIndex: 2,
        explanation: "Plazmatické bunky sú terminálne diferencované B-lymfocyty, ktoré syntetizujú a vylučujú protilátky (imunoglobulíny)."
    ),
    // 7
    Question(
        text: "Antigén je:",
        options: [
            "A) Každá bielkovina v tele",
            "B) Látka, ktorá môže byť špecificky rozpoznaná imunitným systémom",
            "C) Len bakteriálna toxická látka",
            "D) Len vírusová RNA"
        ],
        correctIndex: 1,
        explanation: "Antigén je akákoľvek štruktúra, ktorú imunitný systém vie špecificky rozpoznať (proteíny, polysacharidy, niekedy lipidy, nukleové kyseliny)."
    ),
    // 8
    Question(
        text: "Ktorý imunoglobulín dominuje pri sekundárnej (pamäťovej) odpovedi?",
        options: [
            "A) IgM",
            "B) IgG",
            "C) IgA",
            "D) IgE"
        ],
        correctIndex: 1,
        explanation: "Pri primárnej odpovedi dominuje IgM, pri sekundárnej pamäťovej odpovedi rýchlo narastá IgG s vyššou afinitou."
    ),
    // 9
    Question(
        text: "Ktorý imunoglobulín je hlavný v slizničných sekrétoch (sliny, črevá, dýchacie cesty)?",
        options: [
            "A) IgM",
            "B) IgG",
            "C) IgA",
            "D) IgE"
        ],
        correctIndex: 2,
        explanation: "IgA sa vyskytuje vo forme dimeru v sekrétoch a chráni sliznice pred patogénmi."
    ),
    // 10
    Question(
        text: "IgE je typicky spojený s:",
        options: [
            "A) Autoimunitou",
            "B) Alergickými reakciami a parazitmi",
            "C) Primárnou odpoveďou na baktérie",
            "D) Slizničnou imunitou"
        ],
        correctIndex: 1,
        explanation: "IgE sa viaže na mastocyty a bazofily a podieľa sa na alergii I. typu a obrane proti parazitom."
    ),
    // 11
    Question(
        text: "MHC I molekuly prezentujú antigény:",
        options: [
            "A) B-lymfocytom",
            "B) CD4⁺ T-lymfocytom",
            "C) CD8⁺ cytotoxickým T-lymfocytom",
            "D) NK bunkám výlučne"
        ],
        correctIndex: 2,
        explanation: "MHC I prezentuje endogénne antigény (napr. vírusové proteíny) CD8⁺ T-lymfocytom, ktoré potom dokážu infikovanú bunku zničiť."
    ),
    // 12
    Question(
        text: "MHC II molekuly sa nachádzajú hlavne na:",
        options: [
            "A) Všetkých jadrových bunkách",
            "B) Erytrocytoch",
            "C) Profesionálnych antigén-prezentujúcich bunkách",
            "D) Svalových bunkách"
        ],
        correctIndex: 2,
        explanation: "MHC II je na dendritických bunkách, makrofágoch a B-lymfocytoch. Prezentuje exogénne antigény CD4⁺ T-lymfocytom."
    ),
    // 13
    Question(
        text: "Ktoré bunky patria medzi profesionálne antigén-prezentujúce bunky (APC)?",
        options: [
            "A) Neutrofily, bazofily",
            "B) Dendritické bunky, makrofágy, B-lymfocyty",
            "C) Erytrocyty",
            "D) NK bunky"
        ],
        correctIndex: 1,
        explanation: "APC sú bunky schopné efektívne pohltiť antigén, spracovať ho a prezentovať cez MHC II T-lymfocytom."
    ),
    // 14
    Question(
        text: "Primárna imunitná odpoveď na nový antigén sa vyznačuje:",
        options: [
            "A) Rýchlym nástupom a vysokým IgG",
            "B) Pomalším nástupom, prevažne IgM a slabšou intenzitou",
            "C) Absenciou protilátok",
            "D) Tým, že nevznikajú pamäťové bunky"
        ],
        correctIndex: 1,
        explanation: "Pri prvom kontakte sa najprv tvoria IgM, odpoveď je pomalšia a slabšia, ale vytvára sa imunologická pamäť."
    ),
    // 15
    Question(
        text: "Sekundárna (pamäťová) odpoveď na ten istý antigén:",
        options: [
            "A) Je pomalšia a slabšia",
            "B) Je rýchlejšia silnejšia, s prevahou IgG",
            "C) Nezahŕňa protilátky",
            "D) Je vždy sprostredkovaná iba IgM"
        ],
        correctIndex: 1,
        explanation: "Pamäťové B a T bunky umožňujú rýchlu a silnú odpoveď pri opakovanom kontakte, dominantný je IgG."
    ),
    // 16
    Question(
        text: "Základný princíp očkovania spočíva v tom, že:",
        options: [
            "A) Aktivuje iba vrodenú imunitu",
            "B) Vyvolá adaptívnu imunitnú odpoveď a vytvorí pamäťové bunky bez plnohodnotnej infekcie",
            "C) Mení genetiku patogéna",
            "D) Vždy spôsobí ľahký priebeh choroby"
        ],
        correctIndex: 1,
        explanation: "Vakcinácia simuluje infekciu (oslabeným, usmrteným patogénom alebo antigénom), vytvorí imunologickú pamäť a chráni pri skutočnom kontakte."
    ),
    // 17
    Question(
        text: "Ktoré tvrdenie o komplementovom systéme je správne?",
        options: [
            "A) Je to súbor buniek v slezine",
            "B) Je to kaskáda plazmatických proteínov podieľajúcich sa na opsonizácii, chemotaxii a lýze patogénov",
            "C) Tvorí len protilátky",
            "D) Nemá význam pri vrodenej imunite"
        ],
        correctIndex: 1,
        explanation: "Komplement je kaskáda proteínov, ktorá môže byť aktivovaná protilátkami alebo priamo patogénmi; zvyšuje fagocytózu, chemotaxiu a môže lyzovať bunky."
    ),
    // 18
    Question(
        text: "Ktoré bunky sú hlavné pri zabíjaní vírusom infikovaných buniek v adaptívnej imunite?",
        options: [
            "A) B-lymfocyty",
            "B) CD8⁺ cytotoxické T-lymfocyty",
            "C) Neutrofily",
            "D) Eozinofily"
        ],
        correctIndex: 1,
        explanation: "CD8⁺ T-lymfocyty rozpoznávajú antigén na MHC I a indukujú apoptózu infikovaných alebo nádorových buniek."
    ),
    // 19
    Question(
        text: "CD4⁺ T-lymfocyty (T-helper) primárne:",
        options: [
            "A) Produkujú protilátky",
            "B) Priamo lyzujú bunky",
            "C) Koordinujú imunitnú odpoveď produkciou cytokínov",
            "D) Produkujú komplement"
        ],
        correctIndex: 2,
        explanation: "T-helpery produkujú cytokíny, ktoré podporujú aktiváciu B-lymfocytov, makrofágov a cytotoxických T-buniek."
    ),
    // 20
    Question(
        text: "Čo je opsonizácia?",
        options: [
            "A) Priama lýza baktérie bez protilátok",
            "B) Označenie patogénu molekulami (napr. protilátky, C3b) pre ľahšiu fagocytózu",
            "C) Tvorba imunologickej pamäti",
            "D) Aktivácia T-lymfocytov antigénom"
        ],
        correctIndex: 1,
        explanation: "Opsoníny (napr. IgG, C3b) sa viažu na povrch patogénov a zvyšujú ich „atraktivitu“ pre fagocyty."
    ),
    // 21
    Question(
        text: "Zápal je:",
        options: [
            "A) Vždy patologický a škodlivý proces",
            "B) Fyziologická obranná reakcia tkaniva na poškodenie alebo infekciu",
            "C) Čisto alergická reakcia",
            "D) Len prejav autoimunity"
        ],
        correctIndex: 1,
        explanation: "Zápal je základná obranná reakcia, ktorá umožňuje elimináciu patogénu a reparáciu tkaniva. Problém je, keď je nadmerný alebo chronický."
    ),
    // 22
    Question(
        text: "Klasické kardinálne prejavy zápalu sú (Celsus):",
        options: [
            "A) Dolor, fuga, tremor, odor",
            "B) Rubor, tumor, calor, dolor (a neskôr functio laesa)",
            "C) Rubor, rigor, pallor, tumor",
            "D) Dolor, rigor, febris, nausea"
        ],
        correctIndex: 1,
        explanation: "Klasické znaky zápalu: začervenanie, opuch, teplo, bolesť, + porucha funkcie."
    ),
    // 23
    Question(
        text: "Autoimunitné ochorenie vzniká, keď:",
        options: [
            "A) Imunitný systém nereaguje na patogény",
            "B) Imunitný systém nerozozná vlastné štruktúry a útočí na ne",
            "C) Imunitný systém je úplne vypnutý",
            "D) Je zvýšená hladina komplementu"
        ],
        correctIndex: 1,
        explanation: "Pri autoimunite sa stráca tolerancia k vlastným antigénom a vedie to k chronickému zápalu a poškodeniu tkanív."
    ),
    // 24
    Question(
        text: "Čo je imunodeficiencia?",
        options: [
            "A) Nadmerne silná imunitná odpoveď",
            "B) Nedostatočná funkcia imunitného systému",
            "C) Normálna imunitná odpoveď",
            "D) Špecifický typ autoimunity"
        ],
        correctIndex: 1,
        explanation: "Imunodeficiencia znamená zníženú schopnosť imunitného systému reagovať na infekcie, môže byť vrodená alebo získaná."
    ),
    // 25
    Question(
        text: "Ktoré tvrdenie o alergii I. typu (anafylaktického typu) je správne?",
        options: [
            "A) Je sprostredkovaná IgG",
            "B) Je sprostredkovaná IgE a mastocytmi",
            "C) Nemá nič spoločné s protilátkami",
            "D) Je to čisto T-bunková reakcia"
        ],
        correctIndex: 1,
        explanation: "Alergia I. typu vzniká pri viazaní alergénu na IgE na povrchu mastocytov → degranulácia, histamín, anafylaxia."
    ),
    // 26
    Question(
        text: "Ktorý orgán je centrálnym miestom dozrievania T-lymfocytov?",
        options: [
            "A) Kostná dreň",
            "B) Slezina",
            "C) Thymus (brzlík)",
            "D) Lymfatická uzlina"
        ],
        correctIndex: 2,
        explanation: "T-lymfocyty vznikajú v kostnej dreni, ale dozrievajú v thymuse, kde prebieha selekcia."
    ),
    // 27
    Question(
        text: "Ktorý orgán je hlavný filter krvi a významné miesto imunitnej odpovede proti krvným antigénom?",
        options: [
            "A) Pečeň",
            "B) Slezina",
            "C) Thymus",
            "D) Kostná dreň"
        ],
        correctIndex: 1,
        explanation: "Slezina filtruje krv, odstraňuje staré erytrocyty a je dôležitá pre obranu proti kapsulovaným baktériám."
    ),
    // 28
    Question(
        text: "Lymfatické uzliny sú dôležité, pretože:",
        options: [
            "A) Skladujú väčšinu erytrocytov",
            "B) Sú miestom filtrovania lymfy a aktivácie lymfocytov",
            "C) Produkujú žlč",
            "D) Vyrábajú komplement"
        ],
        correctIndex: 1,
        explanation: "Uzliny filtrujú lymfu z periférie a poskytujú priestor na interakciu antigénov s B a T lymfocytmi."
    ),
    // 29
    Question(
        text: "Ktoré tvrdenie o pamäťových B-lymfocytoch je správne?",
        options: [
            "A) Zanikajú krátko po infekcii",
            "B) Umožňujú rýchlu a silnú sekundárnu odpoveď",
            "C) Produkujú komplement",
            "D) Nemajú význam pre očkovanie"
        ],
        correctIndex: 1,
        explanation: "Pamäťové B bunky sú základom dlhodobej humorálnej imunity a efektu vakcín."
    ),
    // 30
    Question(
        text: "Ktorá kombinácia je správne priradená?",
        options: [
            "A) B-lymfocyt – bunková imunita",
            "B) T-lymfocyt – humorálna imunita",
            "C) B-lymfocyt – protilátková (humorálna) imunita",
            "D) Neutrofil – tvorba protilátok"
        ],
        correctIndex: 2,
        explanation: "B-lymfocyty a ich plazmatické deriváty produkujú protilátky, T-lymfocyty zabezpečujú bunkovú imunitu."
    )
]
// ---------- SRDCOVO-CIEVNA SÚSTAVA (30 otázok) ----------

let srdcovoCievneQuestions: [Question] = [
    // 1
    Question(
        text: "Ktorá komora pumpuje krv do systémového (veľkého) obehu?",
        options: [
            "A) Pravá predsieň",
            "B) Pravá komora",
            "C) Ľavá predsieň",
            "D) Ľavá komora"
        ],
        correctIndex: 3,
        explanation: "Ľavá komora vypudzuje krv do aorty a tým do celého systémového obehu. Musí preto vyvinúť najvyšší tlak a má najhrubšiu svalovú stenu."
    ),
    // 2
    Question(
        text: "Ktorá chlopňa sa nachádza medzi ľavou predsieňou a ľavou komorou?",
        options: [
            "A) Trikuspidálna",
            "B) Mitrálna (bikuspidálna)",
            "C) Pulmonálna",
            "D) Aortálna"
        ],
        correctIndex: 1,
        explanation: "Medzi ľavou predsieňou a komorou je mitrálna (bikuspidálna) chlopňa. Trikuspidálna je vpravo, aortálna a pulmonálna sú semilunárne chlopne výtokových ciest."
    ),
    // 3
    Question(
        text: "Hlavný fyziologický pacemaker srdca je:",
        options: [
            "A) AV uzol",
            "B) Hisov zväzok",
            "C) Purkyňove vlákna",
            "D) SA (sínusovo-predsieňový) uzol"
        ],
        correctIndex: 3,
        explanation: "SA uzol v pravej predsieni spontánne generuje vzruchy s najvyššou frekvenciou a určuje sinusový rytmus srdca."
    ),
    // 4
    Question(
        text: "AV uzol fyziologicky:",
        options: [
            "A) Úplne blokuje šírenie vzruchu na komory",
            "B) Spomaľuje vedenie a umožňuje predsieňam kontrahovať pred komorami",
            "C) Generuje vlnu depolarizácie komôr",
            "D) Nemá žiadnu funkciu"
        ],
        correctIndex: 1,
        explanation: "AV uzol zabezpečuje oneskorenie medzi kontrakciou predsiení a komôr, aby sa komory stihli naplniť krvou."
    ),
    // 5
    Question(
        text: "Systola komôr je fáza, keď:",
        options: [
            "A) Komory sa plnia krvou",
            "B) Komory sa uvoľňujú a tlak v nich klesá",
            "C) Komory sa sťahujú a vypudzujú krv do aorty a trunkus pulmonalis",
            "D) Srdce je elektricky nečinné"
        ],
        correctIndex: 2,
        explanation: "Pri systole komôr sa svalovina komôr sťahuje, tlak stúpa a otvárajú sa semilunárne (aortálna a pulmonálna) chlopňa."
    ),
    // 6
    Question(
        text: "Diastola komôr je charakterizovaná tým, že:",
        options: [
            "A) Komory sa aktívne skracujú",
            "B) Komory sa uvoľňujú, tlak klesá a plnia sa krvou",
            "C) Chlopne sú všetky zatvorené",
            "D) Tlak v komorách je vyšší než v aorte"
        ],
        correctIndex: 1,
        explanation: "Diastola je relaxačná fáza – komory sa uvoľnia, tlak klesne pod tlak v predsieňach a otvoria sa AV chlopne → plnenie komôr."
    ),
    // 7
    Question(
        text: "Minútový objem srdca (cardiac output) je:",
        options: [
            "A) Systolický objem × srdcová frekvencia",
            "B) Systolický objem + diastolický objem",
            "C) Pulzný tlak × srdcová frekvencia",
            "D) Rozdiel medzi tlakom v aorte a komore"
        ],
        correctIndex: 0,
        explanation: "Minútový objem = objem krvi vypudený z komory za minútu. Je to súčin systolického objemu (stroke volume) a srdcovej frekvencie."
    ),
    // 8
    Question(
        text: "Frank-Starlingov zákon hovorí, že:",
        options: [
            "A) Čím vyšší je tlak, tým nižší je výdaj srdca",
            "B) Čím väčšie je naplnenie komôr (preload), tým väčšia je sila kontrakcie do určitej hranice",
            "C) Srdce je nezávislé od venózneho návratu",
            "D) Kontraktilita nezávisí od dĺžky svalových vlákien"
        ],
        correctIndex: 1,
        explanation: "Vyšší venózny návrat natiahne komorové myofibrily a zvýši ich kontrakčnú silu – až do istej optimálnej dĺžky."
    ),
    // 9
    Question(
        text: "Ktorá z nasledujúcich ciev má najväčšiu schopnosť meniť periférny odpor?",
        options: [
            "A) Veľké tepny (aorta)",
            "B) Arterioly",
            "C) Kapiláry",
            "D) Veľké žily"
        ],
        correctIndex: 1,
        explanation: "Arterioly majú výraznú hladkú svalovinu a sú hlavnými rezistenčnými cievami – regulujú periférny odpor a tým aj krvný tlak."
    ),
    // 10
    Question(
        text: "Ktoré tvrdenie o žilách je správne?",
        options: [
            "A) Vždy vedú odkysličenú krv",
            "B) Majú hrubšiu stenu než arterie",
            "C) Často obsahujú chlopne, najmä na končatinách",
            "D) Sú hlavné miesto výmeny plynov"
        ],
        correctIndex: 2,
        explanation: "Žily majú tenšiu stenu, nižší tlak a často chlopne, ktoré bránia spätnému toku. Pľúcne žily ale vedú okysličenú krv, takže 'žilami ide vždy odkysličená' je blbosť."
    ),
    // 11
    Question(
        text: "Kapiláry sú charakteristické tým, že:",
        options: [
            "A) Majú silnú svalovú vrstvu",
            "B) Sú tvorené jednovrstvovým endotelom a sú miestom výmeny látok",
            "C) Majú vysoký tlak ako aorta",
            "D) Obsahujú chlopne"
        ],
        correctIndex: 1,
        explanation: "Kapiláry majú len tenkú endotelovú výstelku, čo umožňuje difúziu plynov, živín a metabolitov medzi krvou a tkanivom."
    ),
    // 12
    Question(
        text: "Stredný arteriálny tlak (MAP) najlepšie približuje vzťah:",
        options: [
            "A) Diastolický tlak + 1/3 pulzového tlaku",
            "B) (Systolický + diastolický) / 2",
            "C) Systolický tlak − diastolický tlak",
            "D) Diastolický tlak × systolický tlak"
        ],
        correctIndex: 0,
        explanation: "MAP ≈ diastolický tlak + 1/3 (systolický − diastolický). Zohľadňuje dlhšie trvanie diastoly v srdcovom cykle."
    ),
    // 13
    Question(
        text: "Srdcové ozvy S1 a S2 sú spôsobené hlavne:",
        options: [
            "A) Kontrakciou predsiení a komôr",
            "B) Otváraním chlopní",
            "C) Uzáverom AV chlopní (S1) a semilunárnych chlopní (S2)",
            "D) Turbulentným prúdením v aorte len"
        ],
        correctIndex: 2,
        explanation: "S1 = uzáver mitrálnej a trikuspidálnej; S2 = uzáver aortálnej a pulmonálnej chlopne."
    ),
    // 14
    Question(
        text: "Baroreceptory regulujú krvný tlak hlavne:",
        options: [
            "A) V dlhodobom horizonte zmenou objemu krvi",
            "B) Krátkodobo reflexne zmenou srdcovej frekvencie a cievneho tonu",
            "C) Iba zmenou filtrácie v obličkách",
            "D) Nemajú význam pri regulácii tlaku"
        ],
        correctIndex: 1,
        explanation: "Baroreceptory v karotických sínusoch a aortálnom oblúku snímajú napätie stien ciev a cez autonómny nervový systém upravujú tlak v sekundách až minútach."
    ),
    // 15
    Question(
        text: "Renín-angiotenzín-aldosterónový systém (RAAS) pri poklese tlaku:",
        options: [
            "A) Znižuje retenciu Na⁺ a vody",
            "B) Vedie k vazodilatácii a poklesu tlaku",
            "C) Aktivuje vazokonstrikciu a retenciu Na⁺ a vody, čím tlak zvyšuje",
            "D) Nemá vzťah ku krvnému tlaku"
        ],
        correctIndex: 2,
        explanation: "RAAS pri hypotenzii alebo hypovolémii zvyšuje Ang II (vazokonstrikcia) a aldosterón (retencia Na⁺ a vody), čím zvyšuje tlak."
    ),
    // 16
    Question(
        text: "Čo je afterload (dotiaž srdca)?",
        options: [
            "A) Naplnenie komôr na konci diastoly",
            "B) Odpor, proti ktorému komora vypudzuje krv",
            "C) Objem krvi vracajúcej sa do srdca",
            "D) Množstvo myokardu"
        ],
        correctIndex: 1,
        explanation: "Afterload je odpor v aorte / veľkých tepnách, proti ktorému musí komora pumpovať. Pri hypertenzii je zvýšený."
    ),
    // 17
    Question(
        text: "Preload (predťaženie) je najlepšie definovaný ako:",
        options: [
            "A) Systolický krvný tlak",
            "B) Koncodiastolický objem alebo tlak v komore",
            "C) Minútový objem srdca",
            "D) Rozdiel medzi systolickým a diastolickým tlakom"
        ],
        correctIndex: 1,
        explanation: "Preload zodpovedá naplneniu komory na konci diastoly. Vyšší preload → väčšie natiahnutie myokardu (Frank-Starling)."
    ),
    // 18
    Question(
        text: "Čo spôsobí zvýšenie sympatikového tonusu na srdce?",
        options: [
            "A) Zníženie srdcovej frekvencie a kontraktility",
            "B) Zvýšenie srdcovej frekvencie a kontraktility",
            "C) Len vazodilatáciu koronárnych ciev",
            "D) Úplné zastavenie srdca"
        ],
        correctIndex: 1,
        explanation: "Sympatikus (β₁ receptory) zvyšuje chronotropný, dromotropný aj inotropný efekt – srdce bije rýchlejšie a silnejšie."
    ),
    // 19
    Question(
        text: "Parasympatikus (n. vagus) na srdce pôsobí hlavne:",
        options: [
            "A) Zvyšuje frekvenciu",
            "B) Znižuje frekvenciu a spomaľuje AV vedenie",
            "C) Zvyšuje kontraktilitu komôr",
            "D) Nemá na srdce žiadny efekt"
        ],
        correctIndex: 1,
        explanation: "Vagus pôsobí najmä na SA a AV uzol – spomaľuje frekvenciu (negatívny chronotropný efekt) a spomaľuje vedenie."
    ),
    // 20
    Question(
        text: "Ktorý z nasledujúcich faktorov priamo NEzvyšuje riziko aterosklerózy?",
        options: [
            "A) Hypercholesterolémia",
            "B) Fajčenie",
            "C) Arteriálna hypertenzia",
            "D) Krátkodobá mierna hypoglykémia u zdravého človeka"
        ],
        correctIndex: 3,
        explanation: "Hyperlipidémia, hypertenzia, fajčenie a diabetes sú významné rizikové faktory aterosklerózy. Krátka hypoglykémia sama osebe nie."
    ),
    // 21
    Question(
        text: "Koronárne artérie zásobujú:",
        options: [
            "A) Pľúca",
            "B) Mozog",
            "C) Samotný myokard",
            "D) Obličky"
        ],
        correctIndex: 2,
        explanation: "Koronárne cievy sú vlastný cievny systém srdca, zásobujú myokard kyslíkom a živinami."
    ),
    // 22
    Question(
        text: "Ktoré tvrdenie o systolickom tlaku je pravdivé?",
        options: [
            "A) Odráža hlavne periférny odpor",
            "B) Závisí od systolického objemu a pružnosti veľkých tepien",
            "C) Nemá vzťah k práci srdca",
            "D) Je vždy nižší než diastolický"
        ],
        correctIndex: 1,
        explanation: "Systolický tlak odráža tlak pri vypudení krvi do aorty a závisí od objemu a elastických vlastností ciev."
    ),
    // 23
    Question(
        text: "Pulzný tlak je:",
        options: [
            "A) Systolický tlak + diastolický tlak",
            "B) Rozdiel medzi systolickým a diastolickým tlakom",
            "C) Priemerný arteriálny tlak",
            "D) Tlak v žilách"
        ],
        correctIndex: 1,
        explanation: "Pulzný tlak = systolický − diastolický. Ovplyvňuje ho hlavne systolický objem a poddajnosť tepien."
    ),
    // 24
    Question(
        text: "Ktorý typ ciev je najväčším zásobníkom krvi (blood reservoir)?",
        options: [
            "A) Veľké tepny",
            "B) Arterioly",
            "C) Kapiláry",
            "D) Žily"
        ],
        correctIndex: 3,
        explanation: "Žily obsahujú väčšinu objemu krvi v obehu, majú veľkú poddajnosť a fungujú ako nízkotlakový rezervoár."
    ),
    // 25
    Question(
        text: "Ktoré tvrdenie o mikrocirkulácii je správne?",
        options: [
            "A) Prebieha iba v žilách",
            "B) Zahŕňa arterioly, kapiláry a venuly",
            "C) Nemá nič spoločné s výmenou látok",
            "D) Prebieha len v pľúcach"
        ],
        correctIndex: 1,
        explanation: "Mikrocirkulácia zabezpečuje výmenu látok, reguláciu prietoku tkanivami a sa odohráva v arteriolách, kapilárach a venulách."
    ),
    // 26
    Question(
        text: "Filtrácia tekutiny z kapilár do interstícia je podporená:",
        options: [
            "A) Zvýšeným hydrostatickým tlakom v kapiláre",
            "B) Zvýšeným onkotickým tlakom plazmy",
            "C) Zníženým intersticiálnym hydrostatickým tlakom",
            "D) A aj C"
        ],
        correctIndex: 3,
        explanation: "Podľa Starlingovho zákona filtráciu podporuje vyšší hydrostatický tlak v kapiláre a nižší tlak v interstíciu; vysoký onkotický tlak plazmy filtráciu brzdí."
    ),
    // 27
    Question(
        text: "Lymfa vzniká hlavne:",
        options: [
            "A) Filtráciou z interstícia do lymfatických kapilár",
            "B) Priamo z artérií",
            "C) V pečeni",
            "D) V kostnej dreni"
        ],
        correctIndex: 0,
        explanation: "Lymfa je prebytočný tkanivový mok, ktorý sa vstrebáva do lymfatických kapilár a vracia späť do žilového systému."
    ),
    // 28
    Question(
        text: "Čo sa stane s prietokom krvi orgánom pri lokálnej vazodilatácii arteriol daného orgánu?",
        options: [
            "A) Prietok klesne",
            "B) Prietok sa nezmení",
            "C) Prietok sa zvýši",
            "D) Prietok sa zastaví"
        ],
        correctIndex: 2,
        explanation: "Lokálna vazodilatácia znižuje odpor v danej oblasti, čo zvyšuje prietok krvi daným orgánom."
    ),
    // 29
    Question(
        text: "Ktoré tvrdenie o venóznom návrate je správne?",
        options: [
            "A) Nemá vzťah k minútovému objemu",
            "B) Je ovplyvnený svalovou pumpou a dýchaním",
            "C) Závisí iba od kontraktility srdca",
            "D) Nezávisí od objemu krvi"
        ],
        correctIndex: 1,
        explanation: "Venózny návrat zvyšuje svalová pumpa, respiračné pohyby, tonus žíl aj objem krvi; priamo ovplyvňuje preload a tým minútový objem."
    ),
    // 30
    Question(
        text: "Ktoré tvrdenie o malom (pľúcnom) obehu je správne?",
        options: [
            "A) Má vyšší tlak než veľký obeh",
            "B) Slúži hlavne na výmenu plynov v pľúcach",
            "C) Začína v ľavej komore",
            "D) Vedie odkysličenú krv z pľúc do srdca"
        ],
        correctIndex: 1,
        explanation: "Malý obeh je nízkotlakový systém medzi pravou komorou a ľavou predsieňou a jeho úloha je výmena O₂ a CO₂ v pľúcach."
    )
]
// ---------- DÝCHACIA SÚSTAVA (30 otázok) ----------

let dychaciaQuestions: [Question] = [
    // 1
    Question(
        text: "Kde prebieha hlavná výmena plynov medzi vzduchom a krvou?",
        options: [
            "A) V priedušnici",
            "B) V segmentových bronchoch",
            "C) V alveolách pľúc",
            "D) V nosovej dutine"
        ],
        correctIndex: 2,
        explanation: "Difúzna výmena O₂ a CO₂ sa odohráva v alveolách, ktoré majú obrovskú plochu a veľmi tenkú alveolárno-kapilárnu bariéru."
    ),
    // 2
    Question(
        text: "Ktorá štruktúra patrí medzi horné dýchacie cesty?",
        options: [
            "A) Priedušnica",
            "B) Hltan a nosová dutina",
            "C) Hlavné bronchy",
            "D) Bronchioly"
        ],
        correctIndex: 1,
        explanation: "Horné cesty zahŕňajú nos, nosovú dutinu, vedľajšie dutiny a hltan; dolné priedušnicu, bronchy a pľúca."
    ),
    // 3
    Question(
        text: "Úlohou riasinkového epitelu v dýchacích cestách je:",
        options: [
            "A) Tvorba surfaktantu",
            "B) Pohyb hlienu s nečistotami smerom k hltanu",
            "C) Výmena plynov",
            "D) Zabraňovanie difúzii O₂"
        ],
        correctIndex: 1,
        explanation: "Riasinky posúvajú hlien s prachom, baktériami a inými časticami smerom nahor, čím chránia dolné dýchacie cesty."
    ),
    // 4
    Question(
        text: "Surfaktant produkujú:",
        options: [
            "A) Pneumocyty I. typu",
            "B) Pneumocyty II. typu",
            "C) Alveolárne makrofágy",
            "D) Fibroblasty"
        ],
        correctIndex: 1,
        explanation: "Pneumocyty II. typu vylučujú surfaktant – fosfolipidovo-proteínovú zmes, ktorá znižuje povrchové napätie v alveolách."
    ),
    // 5
    Question(
        text: "Hlavná funkcia surfaktantu je:",
        options: [
            "A) Zvýšiť povrchové napätie v alveolách",
            "B) Znížiť povrchové napätie a zabrániť kolapsu malých alveol",
            "C) Zlepšiť čistenie riasinkami",
            "D) Viazať CO₂ v pľúcach"
        ],
        correctIndex: 1,
        explanation: "Zníženie povrchového napätia stabilizuje alveoly a bráni ich kolapsu počas výdychu, najmä tých menších."
    ),
    // 6
    Question(
        text: "Vitálna kapacita pľúc je definovaná ako:",
        options: [
            "A) Dychový objem pri pokojnom dýchaní",
            "B) Objem vydýchnutý po maximálnom nádychu",
            "C) Reziduálny objem",
            "D) Súčtový objem všetkého vzduchu v pľúcach"
        ],
        correctIndex: 1,
        explanation: "Vitálna kapacita = maximálny objem, ktorý človek vydýchne po maximálnom nádychu (IRV + VT + ERV)."
    ),
    // 7
    Question(
        text: "Reziduálny objem pľúc je:",
        options: [
            "A) Objem vzduchu po pokojnom výdychu",
            "B) Objem, ktorý zostáva v pľúcach aj po maximálnom výdychu",
            "C) Objem pri maximálnom nádychu",
            "D) Objem mŕtveho priestoru"
        ],
        correctIndex: 1,
        explanation: "Reziduálny objem sa nedá vydýchnuť ani pri maximálnom úsilí, zabraňuje úplnému skolapsu pľúc."
    ),
    // 8
    Question(
        text: "Fyziologický mŕtvy priestor zahŕňa:",
        options: [
            "A) Len anatomický mŕtvy priestor (vodivé cesty bez alveol)",
            "B) Anatomický plus alveolárny mŕtvy priestor",
            "C) Len alveolárny mŕtvy priestor",
            "D) Reziduálny objem"
        ],
        correctIndex: 1,
        explanation: "Fyziologický mŕtvy priestor = anatomický (vodivé cesty) + alveolárny (zle perfundované alveoly)."
    ),
    // 9
    Question(
        text: "Minútová ventilácia je:",
        options: [
            "A) Dychová frekvencia × vitálna kapacita",
            "B) Dychový objem × dychová frekvencia",
            "C) Reziduálny objem × dychová frekvencia",
            "D) Súčtový objem všetkých pľúcnych objemov"
        ],
        correctIndex: 1,
        explanation: "Minútová ventilácia = VT × f. Skutočne dôležitá pre výmenu plynov je ale alveolárna ventilácia (MV mínus mŕtvy priestor)."
    ),
    // 10
    Question(
        text: "Hlavný stimul pre dychové centrum u zdravého človeka je:",
        options: [
            "A) Pokles arteriálneho pO₂",
            "B) Zvýšenie pCO₂ a koncentrácie H⁺",
            "C) Pokles pH len v obličkách",
            "D) Vždy len mechanické dráždenie receptorov v pľúcach"
        ],
        correctIndex: 1,
        explanation: "Chemoreceptory v mozgovom kmeni reagujú najmä na zvýšenie pCO₂ (a tým H⁺). Hypoxia sa stáva hlavným stimulom pri chronickej hyperkapnii (napr. u COPD)."
    ),
    // 11
    Question(
        text: "Bohrův efekt znamená, že:",
        options: [
            "A) Pri zvýšení pCO₂ a H⁺ sa zvyšuje afinita Hb k O₂",
            "B) Pri zvýšení pCO₂ a H⁺ sa znižuje afinita Hb k O₂ a O₂ sa ľahšie uvoľní v tkanivách",
            "C) Nemá vplyv na uvoľňovanie O₂",
            "D) Týka sa len CO₂"
        ],
        correctIndex: 1,
        explanation: "Bohrův efekt uľahčuje uvoľňovanie kyslíka v acidotických a metabolicky aktívnych tkanivách (vyššie pCO₂, nižšie pH)."
    ),
    // 12
    Question(
        text: "Haldaneho efekt opisuje:",
        options: [
            "A) Vplyv pH na väzbu O₂ na Hb",
            "B) Vplyv O₂ na transport CO₂ viazaného na Hb",
            "C) Vplyv teploty na krivku Hb-O₂",
            "D) Vplyv H⁺ na pufračnú kapacitu plazmy"
        ],
        correctIndex: 1,
        explanation: "Haldaneho efekt: deoxygenovaný Hb viaže viac CO₂ a H⁺; v pľúcach pri naviazaní O₂ sa CO₂ uvoľňuje."
    ),
    // 13
    Question(
        text: "Ako sa väčšina CO₂ v krvi transportuje?",
        options: [
            "A) Rozpustený v plazme ako plyn",
            "B) Chemicky viazaný na hemoglobín (karbamíny)",
            "C) Vo forme bikarbonátu (HCO₃⁻) v plazme",
            "D) V erytrocytoch ako CO₂-bubliny"
        ],
        correctIndex: 2,
        explanation: "Väčšina CO₂ sa v krvi vyskytuje ako HCO₃⁻ po reakcii CO₂ + H₂O → H₂CO₃ → H⁺ + HCO₃⁻ katalyzovanej karboanhydrázou."
    ),
    // 14
    Question(
        text: "Hyperventilácia vedie typicky k:",
        options: [
            "A) Hyperkapnii a respiračnej acidóze",
            "B) Hypokapnii a respiračnej alkalóze",
            "C) Nemá vplyv na pCO₂",
            "D) Zníženiu saturácie Hb"
        ],
        correctIndex: 1,
        explanation: "Pri hyperventilácii sa CO₂ nadmerne vydychuje → pCO₂ klesá → respiračná alkalóza."
    ),
    // 15
    Question(
        text: "Hypoventilácia vedie typicky k:",
        options: [
            "A) Hypokapnii",
            "B) Hyperkapnii a respiračnej acidóze",
            "C) Zvýšeniu pH",
            "D) Vždy k hypoxii bez zmeny CO₂"
        ],
        correctIndex: 1,
        explanation: "Pri hypoventilácii sa CO₂ hromadí → pCO₂ stúpa → respiračná acidóza, často aj hypoxia."
    ),
    // 16
    Question(
        text: "Ktorý sval je hlavný inspiračný sval v pokoji?",
        options: [
            "A) Medzirebrové exspiračné svaly",
            "B) Priamy brušný sval",
            "C) Bránica",
            "D) Sternocleidomastoideus"
        ],
        correctIndex: 2,
        explanation: "Bránica je hlavný inspiračný sval; kontrakcia ju posúva nadol, zväčšuje objem hrudníka a vytvára podtlak."
    ),
    // 17
    Question(
        text: "Pokojný výdych u zdravého človeka je:",
        options: [
            "A) Aktívny proces",
            "B) Prevažne pasívna elasticita pľúc a hrudníka",
            "C) Závislý len od brušných svalov",
            "D) Možný iba pri kontrakcii medzirebrových svalov"
        ],
        correctIndex: 1,
        explanation: "Pokojný výdych využíva pasívnu elasticitu pľúc a hrudného koša. Aktívne exspiračné svaly nastupujú pri zvýšenej ventilácii."
    ),
    // 18
    Question(
        text: "Compliance pľúc znamená:",
        options: [
            "A) Odpor voči prúdeniu vzduchu",
            "B) Poddajnosť pľúc – zmena objemu pri zmene tlaku",
            "C) Maximálnu vitálnu kapacitu",
            "D) Reziduálny objem"
        ],
        correctIndex: 1,
        explanation: "Compliance = ΔV/ΔP. Čím vyššia je poddajnosť, tým ľahšie sa pľúca roztiahnu pri danej zmene tlaku."
    ),
    // 19
    Question(
        text: "Ktoré tvrdenie o prúdení vzduchu v dýchacích cestách je správne?",
        options: [
            "A) Vždy je laminárne",
            "B) V horných dýchacích cestách býva často turbulentné",
            "C) V pľúcnom parenchýme je turbulentné",
            "D) Nemá vplyv na odpor dýchacích ciest"
        ],
        correctIndex: 1,
        explanation: "V trachee a veľkých bronchoch je prúdenie často turbulentné, v malých dýchacích cestách skôr laminárne."
    ),
    // 20
    Question(
        text: "Perfúzia pľúc znamená:",
        options: [
            "A) Prúdenie vzduchu v dýchacích cestách",
            "B) Prúdenie krvi pľúcnymi kapilárami",
            "C) Difúziu O₂ cez membránu",
            "D) Filtráciu tekutiny v alveolách"
        ],
        correctIndex: 1,
        explanation: "Ventilácia = pohyb vzduchu, perfúzia = prietok krvi, difúzia = prechod plynov cez membránu."
    ),
    // 21
    Question(
        text: "Optimálny pomer ventilácie a perfúzie (V/Q) v pľúcach je približne:",
        options: [
            "A) 0,1",
            "B) 0,5",
            "C) 0,8",
            "D) 2,0"
        ],
        correctIndex: 2,
        explanation: "V/Q ≈ 0,8 v priemere; v rôznych častiach pľúc sa mierne líši (bázy vs apex)."
    ),
    // 22
    Question(
        text: "Ak je ventilácia zachovaná, ale prietok krvi v časti pľúc chýba, vzniká:",
        options: [
            "A) Šunt",
            "B) Mŕtvy priestor",
            "C) Hyperventilácia",
            "D) Hyperperfúzia"
        ],
        correctIndex: 1,
        explanation: "Ventilované, ale neperfúzované alveoly = alveolárny mŕtvy priestor. Šunt je opačný problém: perfúzia bez ventilácie."
    ),
    // 23
    Question(
        text: "Ak je perfúzia zachovaná, ale ventilácia v časti pľúc chýba, vzniká:",
        options: [
            "A) Fyziologický mŕtvy priestor",
            "B) Funkčný šunt",
            "C) Hyperventilovaný segment",
            "D) Zvýšený reziduálny objem"
        ],
        correctIndex: 1,
        explanation: "Krv prechádza okolo neventilovaných alveol a nevymení plyny – funkčný šunt, podobne ako keby časť krvi obišla pľúca."
    ),
    // 24
    Question(
        text: "Ktorá z nasledujúcich štruktúr je súčasťou respiratorickej zóny dýchacieho systému?",
        options: [
            "A) Trachea",
            "B) Terminálne bronchioly",
            "C) Respiratorné bronchioly",
            "D) Nosová dutina"
        ],
        correctIndex: 2,
        explanation: "Respiračná zóna zahŕňa respiratorné bronchioly, alveolárne chodbičky a alveoly, kde prebieha výmena plynov."
    ),
    // 25
    Question(
        text: "Hlavný transportér O₂ v krvi je:",
        options: [
            "A) Rozpustený voľne v plazme",
            "B) Viazaný na hemoglobín v erytrocytoch",
            "C) Viazaný na albumín",
            "D) Viazaný na fibrinogén"
        ],
        correctIndex: 1,
        explanation: "Väčšina O₂ je viazaná na Fe²⁺ v hemoglobíne; rozpustený v plazme je len malý podiel, ale ten určuje pO₂."
    ),
    // 26
    Question(
        text: "Ktoré tvrdenie o pH krvi pri hyperventilácii je správne?",
        options: [
            "A) pH klesá (acidóza)",
            "B) pH stúpa (alkalóza)",
            "C) pH sa nemení",
            "D) Závisí len od pO₂"
        ],
        correctIndex: 1,
        explanation: "Hyperventilácia znižuje pCO₂ → menej H⁺ → posun pH do alkalickej oblasti (respiračná alkalóza)."
    ),
    // 27
    Question(
        text: "Ktoré tvrdenie o karboanhydráze je správne?",
        options: [
            "A) Je prítomná len v plazme",
            "B) Umožňuje rýchlu premenu CO₂ a H₂O na H₂CO₃ v erytrocytoch",
            "C) Nemá vplyv na transport CO₂",
            "D) Týka sa len obličiek, nie pľúc"
        ],
        correctIndex: 1,
        explanation: "Karboanhydráza v erytrocytoch katalyzuje reakciu CO₂ + H₂O → H₂CO₃ → H⁺ + HCO₃⁻, čo je kľúčové pre transport CO₂."
    ),
    // 28
    Question(
        text: "Ktoré tvrdenie o hemoglobínovej disociačnej krivke je správne?",
        options: [
            "A) Je lineárna",
            "B) Má sigmoidálny tvar vďaka kooperativite väzby O₂",
            "C) Nezávisí od pH",
            "D) Nezávisí od teploty"
        ],
        correctIndex: 1,
        explanation: "Sigmoidálny tvar je dôsledok kooperatívnej väzby – naviazanie prvého O₂ zvyšuje afinitu ďalších väzbových miest."
    ),
    // 29
    Question(
        text: "Ktorý faktor posunie Hb-O₂ krivku doprava (nižšia afinita)?",
        options: [
            "A) Pokles teploty",
            "B) Zvýšenie pCO₂ a H⁺",
            "C) Pokles 2,3-BPG",
            "D) Alkalóza"
        ],
        correctIndex: 1,
        explanation: "Acidóza, hyperkapnia, vyššia teplota a viac 2,3-BPG posúvajú krivku doprava → O₂ sa ľahšie uvoľní do tkanív."
    ),
    // 30
    Question(
        text: "Ktoré tvrdenie o ochranných reflexoch dýchacej sústavy je správne?",
        options: [
            "A) Kašeľ a kýchanie pomáhajú odstraňovať dráždivé látky z dýchacích ciest",
            "B) Nemajú žiadnu ochrannú funkciu",
            "C) Slúžia len na reguláciu pH",
            "D) Sú prítomné len u detí"
        ],
        correctIndex: 0,
        explanation: "Kašeľ (dolné cesty) a kýchanie (horné cesty) sú ochranné reflexy, ktoré pomáhajú odstrániť dráždivé látky, hlien a cudzie telesá."
    )
]
// ---------- KOŽA (30 otázok) ----------

let kozaQuestions: [Question] = [
    // 1
    Question(
        text: "Ktorá vrstva kože dáva koži najväčšiu pevnosť a elasticitu?",
        options: [
            "A) Rohovitá vrstva epidermis",
            "B) Bazálna vrstva epidermis",
            "C) Dermis (škára)",
            "D) Hypodermis (podkožie)"
        ],
        correctIndex: 2,
        explanation: "Dermis obsahuje kolagénové a elastické vlákna, cievy a nervy. Práve ona nesie väčšinu mechanického zaťaženia kože."
    ),
    // 2
    Question(
        text: "Epidermis je tvorená hlavne:",
        options: [
            "A) Jednovrstvovým plochým epitelom",
            "B) Viacvrstvovým zrohovateným dlaždicovým epitelom",
            "C) Jednovrstvovým cylindrickým epitelom",
            "D) Kubickým epitelom"
        ],
        correctIndex: 1,
        explanation: "Povrch kože pokrýva viacvrstvový zrohovatený dlaždicový epitel, ktorý chráni pred stratami vody, mechanickým poškodením a infekciou."
    ),
    // 3
    Question(
        text: "Melanocyty sa nachádzajú hlavne v:",
        options: [
            "A) Stratum corneum",
            "B) Stratum basale epidermis",
            "C) Hypodermis",
            "D) Mazových žľazách"
        ],
        correctIndex: 1,
        explanation: "Melanocyty sú v bazálnej vrstve a produkujú melanín, ktorý chráni DNA buniek pred UV žiarením."
    ),
    // 4
    Question(
        text: "Hlavnou funkciou melanínu je:",
        options: [
            "A) Tvorba vitamínu D",
            "B) Mechanická opora kože",
            "C) Ochrana pred UV žiarením",
            "D) Zvýšenie potenia"
        ],
        correctIndex: 2,
        explanation: "Melanín absorbuje UV žiarenie a znižuje poškodenie DNA v keratinocytoch."
    ),
    // 5
    Question(
        text: "Ktoré štruktúry sú typické pre dermis?",
        options: [
            "A) Keratinocyty a melanocyty",
            "B) Kolagén, elastické vlákna, cievy, nervy",
            "C) Rohové šupinky bez ciev",
            "D) Len tukové bunky"
        ],
        correctIndex: 1,
        explanation: "Dermis obsahuje fibroblasty, kolagén, elastické vlákna, cievy, nervy a kožné adnexá (folikuly, žľazy)."
    ),
    // 6
    Question(
        text: "Hypodermis (podkožie) je tvorená hlavne:",
        options: [
            "A) Tukovým a väzivovým tkanivom",
            "B) Rohovateným epitelom",
            "C) Hladkým svalstvom",
            "D) Kostným tkanivom"
        ],
        correctIndex: 0,
        explanation: "Podkožie obsahuje tukové a väzivové tkanivo – funguje ako zásobáreň energie, tepelná izolácia a mechanický „tlmič“."
    ),
    // 7
    Question(
        text: "Ekrinné potné žľazy slúžia hlavne na:",
        options: [
            "A) Produkciu mazu",
            "B) Termoreguláciu odparovaním potu",
            "C) Produkciu feromónov",
            "D) Syntézu vitamínu D"
        ],
        correctIndex: 1,
        explanation: "Ekrinné žľazy produkujú vodnatý pot, ktorého odparovanie odvádza teplo a znižuje telesnú teplotu."
    ),
    // 8
    Question(
        text: "Mazové žľazy:",
        options: [
            "A) Produkujú vodnatý pot",
            "B) Ústia väčšinou do vlasových folikulov",
            "C) Sú aktívne len v detstve",
            "D) Nemajú žiadnu úlohu v ochrane kože"
        ],
        correctIndex: 1,
        explanation: "Sebum zvláčňuje kožu a vlasy a má aj mierny antimikrobiálny efekt. Prehnané „nadšenie“ mazových žliaz = akné."
    ),
    // 9
    Question(
        text: "Ktoré receptory v koži vnímajú tlak a vibrácie?",
        options: [
            "A) Meissnerove telieska",
            "B) Paciniho telieska",
            "C) Merkelove bunky",
            "D) Nociceptory"
        ],
        correctIndex: 1,
        explanation: "Paciniho telieska v hlbších vrstvách reagujú na hlboký tlak a vibrácie. Meissnerove sú na jemný dotyk."
    ),
    // 10
    Question(
        text: "Ktoré tvrdenie o termoregulácii cez kožu je správne?",
        options: [
            "A) Rozšírenie kožných ciev znižuje odvod tepla",
            "B) Zúženie kožných ciev zvyšuje stratu tepla",
            "C) Rozšírenie kožných ciev zvyšuje stratu tepla",
            "D) Termoregulácia nezávisí od kože"
        ],
        correctIndex: 2,
        explanation: "Vazodilatácia v koži zvyšuje prietok krvi a tým odvod tepla do prostredia."
    ),
    // 11
    Question(
        text: "Ktorý vitamín sa čiastočne syntetizuje v koži pôsobením UV žiarenia?",
        options: [
            "A) Vitamín A",
            "B) Vitamín B₁₂",
            "C) Vitamín C",
            "D) Vitamín D"
        ],
        correctIndex: 3,
        explanation: "V koži sa z 7-dehydrocholesterolu tvorí cholekalciferol (vitamín D₃) po expozícii UVB."
    ),
    // 12
    Question(
        text: "Primárna bariérová funkcia kože voči vode a chemikáliám patrí:",
        options: [
            "A) Hypodermis",
            "B) Rohovitej vrstve epidermis (stratum corneum)",
            "C) Dermis",
            "D) Bazálnej membráne"
        ],
        correctIndex: 1,
        explanation: "Stratum corneum s lipidmi a zrohovatenými bunkami zabraňuje nadmernej strate vody aj prieniku mnohých látok."
    ),
    // 13
    Question(
        text: "Pri poranení kože sa ako prvé vytvára:",
        options: [
            "A) Granulačné tkanivo",
            "B) Krvná zrazenina a zápalová reakcia",
            "C) Jazva",
            "D) Hyperkeratóza"
        ],
        correctIndex: 1,
        explanation: "Najprv prebehne hemostáza (zrazenina) a zápal, potom nasleduje proliferácia (granulačné tkanivo, reepitelizácia) a remodelácia."
    ),
    // 14
    Question(
        text: "1. stupeň popálenia postihuje:",
        options: [
            "A) Len epidermis",
            "B) Celú kožu a podkožie",
            "C) Epidermis a časť dermis s pľuzgiermi",
            "D) Svaly a šľachy"
        ],
        correctIndex: 0,
        explanation: "1. stupeň = erytém, bolestivosť, bez pľuzgierov – len povrchová epidermis (spálenie od slnka)."
    ),
    // 15
    Question(
        text: "2. stupeň popálenia sa líši tým, že:",
        options: [
            "A) Postihuje len hypodermis",
            "B) Tvoria sa pľuzgiere (postihnutá epidermis + časť dermis)",
            "C) Nespôsobuje bolesť",
            "D) Je vždy nevratný bez hojenia"
        ],
        correctIndex: 1,
        explanation: "Pri 2. stupni je poškodená epidermis a časť dermis, vznikajú pľuzgiere, bolesť je výrazná."
    ),
    // 16
    Question(
        text: "3. stupeň popálenia je charakterizovaný:",
        options: [
            "A) Len povrchovým začervenaním",
            "B) Úplnou deštrukciou celej hrúbky kože",
            "C) Len poškodením rohovitej vrstvy",
            "D) Vždy spontánnym úplným zahojením bez jazvy"
        ],
        correctIndex: 1,
        explanation: "3. stupeň zasahuje celú hrúbku kože, často až podkožie; koža môže byť voskovito biela až zuhoľnatená a citlivosť môže byť paradoxne menšia (poškodené nervy)."
    ),
    // 17
    Question(
        text: "Ktoré tvrdenie o mazových žľazách je pravdivé?",
        options: [
            "A) Nachádzajú sa hlavne na dlaniach a ploskách",
            "B) Nie sú hormonálne ovplyvnené",
            "C) Sú aktivované najmä v puberte androgénmi",
            "D) Produkujú pot"
        ],
        correctIndex: 2,
        explanation: "Mazové žľazy reagujú na androgény, preto je akné typicky pubertálny „bonus“."
    ),
    // 18
    Question(
        text: "Chlpy a vlasy sú tvorené hlavne:",
        options: [
            "A) Kolagénom",
            "B) Elastínom",
            "C) Keratínom",
            "D) Melanínom"
        ],
        correctIndex: 2,
        explanation: "Vlasy, chlpy a nechty sú keratínové štruktúry. Melanín určuje farbu, ale základ je keratín."
    ),
    // 19
    Question(
        text: "Ktorá funkcia kože súvisí s imunitou?",
        options: [
            "A) Tvorba erytropoetínu",
            "B) Langerhansove bunky ako antigén-prezentujúce bunky",
            "C) Tvorba komplementu",
            "D) Aktivácia T-lymfocytov v kostnej dreni"
        ],
        correctIndex: 1,
        explanation: "Langerhansove bunky v epidermis zachytávajú antigény a migrujú do lymfatických uzlín, kde aktivujú T-lymfocyty."
    ),
    // 20
    Question(
        text: "Ktoré tvrdenie o pH povrchu kože je správne?",
        options: [
            "A) Je silne zásadité (okolo 9)",
            "B) Je mierne kyslé, čo bráni rastu mnohých patogénov",
            "C) Je neutrálne presne 7,0",
            "D) Nemá význam pre mikroflóru"
        ],
        correctIndex: 1,
        explanation: "Kožný povrch má mierne kyslý kyslý plášť (pH ~5,5), čo podporuje fyziologickú mikroflóru a brzdí patogény."
    ),
    // 21
    Question(
        text: "Ktorý typ potnej žľazy je spojený s pachom a aktivuje sa v puberte?",
        options: [
            "A) Ekrinné žľazy",
            "B) Apokrinné žľazy",
            "C) Mazové žľazy",
            "D) Ceruminózne žľazy"
        ],
        correctIndex: 1,
        explanation: "Apokrinné žľazy (axily, genitálna oblasť) produkujú sekrét, ktorý baktérie rozkladajú – výsledok poznáš…"
    ),
    // 22
    Question(
        text: "Koža vníma bolesť pomocou:",
        options: [
            "A) Paciniho teliesok",
            "B) Meissnerových teliesok",
            "C) Voľných nervových zakončení (nociceptorov)",
            "D) Merkelových buniek"
        ],
        correctIndex: 2,
        explanation: "Bolestivé podnety registrujú voľné nervové zakončenia – nociceptory."
    ),
    // 23
    Question(
        text: "Strata kože na veľkej ploche vedie k:",
        options: [
            "A) Zlepšenej termoregulácii",
            "B) Nižšiemu riziku infekcie",
            "C) Masívnym stratám tekutín a riziku infekcie",
            "D) Zvýšenej syntéze vitamínu D"
        ],
        correctIndex: 2,
        explanation: "Rozsiahle popáleniny a poranenia = strata bariéry → dehydratácia, porucha termoregulácie, vysoké riziko sepsy."
    ),
    // 24
    Question(
        text: "Ktoré tvrdenie o nechte je správne?",
        options: [
            "A) Je tvorený prevažne kolagénom",
            "B) Matrix nechta zabezpečuje rast nechta",
            "C) Necht nie je súčasť kože",
            "D) Necht je len zrohovatená dermis"
        ],
        correctIndex: 1,
        explanation: "Matrix (koreň nechta) obsahuje proliferujúce bunky, ktoré vytvárajú nový keratín nechta."
    ),
    // 25
    Question(
        text: "Ktoré tvrdenie o tlaku na kožu je správne?",
        options: [
            "A) Dlhodobý tlak nemá žiadny efekt",
            "B) Dlhodobý tlak môže viesť k preležaninám (dekubitom)",
            "C) Dekubity sú len infekčné ochorenia",
            "D) Tlak vždy zlepšuje prekrvenie"
        ],
        correctIndex: 1,
        explanation: "Trvalý tlak = ischémia tkaniva → nekróza → dekubity, typicky nad kostnými výbežkami."
    ),
    // 26
    Question(
        text: "Strata melanocytov v určitých ložiskách kože vedie k:",
        options: [
            "A) Psoriáze",
            "B) Vitiligu",
            "C) Seborei",
            "D) Ekzému"
        ],
        correctIndex: 1,
        explanation: "Vitiligo je charakterizované depigmentovanými ložiskami v dôsledku straty melanocytov (pravdepodobne autoimunitne)."
    ),
    // 27
    Question(
        text: "Ktoré tvrdenie o kožnej mikroflóre je správne?",
        options: [
            "A) Všetky baktérie na koži sú patogénne",
            "B) Fyziologická mikroflóra má aj ochrannú funkciu",
            "C) Koža je za normálnych okolností sterilná",
            "D) Mikroflóra nemá vplyv na zdravie kože"
        ],
        correctIndex: 1,
        explanation: "Normálna mikroflóra konkuruje patogénom a pomáha udržiavať stabilitu prostredia na koži."
    ),
    // 28
    Question(
        text: "Ktoré tvrdenie o stratum basale je správne?",
        options: [
            "A) Bunky sú neaktívne a nedelia sa",
            "B) Obsahuje kmeňové bunky epidermis, ktoré sa delia a nahrádzajú povrchové vrstvy",
            "C) Je to vrstva len zrohovatených buniek",
            "D) Obsahuje výhradne melanocyty"
        ],
        correctIndex: 1,
        explanation: "Bazálna vrstva obsahuje proliferujúce keratinocyty, z ktorých vznikajú vyššie vrstvy epidermis."
    ),
    // 29
    Question(
        text: "Pri zápale kože (dermatitíde) sú typické prejavy:",
        options: [
            "A) Rubor, tumor, calor, dolor",
            "B) Len bolesť bez začervenania",
            "C) Len suchosť bez zápalu",
            "D) Iba hyperpigmentácia"
        ],
        correctIndex: 0,
        explanation: "Dermatitída je klasický zápal – začervenanie, opuch, zvýšená teplota, bolesť a často porucha funkcie (svrbenie, pálenie)."
    ),
    // 30
    Question(
        text: "Ktoré tvrdenie o koži ako zmyslovom orgáne je správne?",
        options: [
            "A) Vníma len bolesť",
            "B) Vníma dotyk, tlak, teplo, chlad, bolesť",
            "C) Neobsahuje žiadne receptory",
            "D) Vníma len vibrácie"
        ],
        correctIndex: 1,
        explanation: "Koža je komplexný zmyslový orgán s rôznymi typmi receptorov pre mechanické, termické aj bolestivé podnety."
    )
]
// ---------- ROZMNOŽOVACIA SÚSTAVA (30 otázok) ----------

let rozmnozovaciaQuestions: [Question] = [
    // 1
    Question(
        text: "Kde prebieha spermatogenéza?",
        options: [
            "A) V semenných kanálikoch semenníka",
            "B) V nadsemenníku",
            "C) V prostate",
            "D) V semenných vačkoch"
        ],
        correctIndex: 0,
        explanation: "Spermatogenéza prebieha v semenných kanálikoch, kde Sertoliho bunky podporujú vývoj zárodočných buniek na spermie."
    ),
    // 2
    Question(
        text: "Ktoré bunky v semenníku produkujú testosterón?",
        options: [
            "A) Spermatogónie",
            "B) Sertoliho bunky",
            "C) Leydigove bunky",
            "D) Bunky nadsemenníka"
        ],
        correctIndex: 2,
        explanation: "Leydigove intersticiálne bunky produkujú testosterón pod vplyvom LH z hypofýzy."
    ),
    // 3
    Question(
        text: "Spermatogenéza sa fyziologicky začína:",
        options: [
            "A) V prenatálnom období",
            "B) V novorodeneckom období",
            "C) V puberte",
            "D) Až v dospelosti po 25. roku"
        ],
        correctIndex: 2,
        explanation: "Spermatogenéza sa rozbieha v puberte pod vplyvom gonadotropínov a testosterónu."
    ),
    // 4
    Question(
        text: "Ktorá štruktúra je miestom dozrievania a skladovania spermií?",
        options: [
            "A) Prostata",
            "B) Nadsemenník (epididymis)",
            "C) Semenný vačok",
            "D) Močová trubica"
        ],
        correctIndex: 1,
        explanation: "V nadsemenníku spermie dozrievajú a získavajú schopnosť pohybu, zároveň sa tam skladujú."
    ),
    // 5
    Question(
        text: "Ktorá žľaza produkuje sekrét bohatý na fruktózu pre výživu spermií?",
        options: [
            "A) Prostata",
            "B) Semenné vačky",
            "C) Bulbouretrálne žľazy",
            "D) Hypofýza"
        ],
        correctIndex: 1,
        explanation: "Semenné vačky produkujú viskózny, fruktózou bohatý sekrét, ktorý tvorí významnú časť ejakulátu."
    ),
    // 6
    Question(
        text: "Ktoré tvrdenie o prostate je správne?",
        options: [
            "A) Produkuje testosterón",
            "B) Produkuje zásaditý sekrét, ktorý zvyšuje pohyblivosť spermií",
            "C) Je nepárový semenník",
            "D) Nemá vztah k ejakulátu"
        ],
        correctIndex: 1,
        explanation: "Prostatický sekrét je mierne zásaditý, neutralizuje kyslé prostredie vagíny a podporuje pohyblivosť spermií."
    ),
    // 7
    Question(
        text: "Ktoré tvrdenie o erekcii je správne?",
        options: [
            "A) Je sprostredkovaná prevažne sympatikom",
            "B) Je to čistý mechanický jav bez nervovej regulácie",
            "C) Je sprostredkovaná prevažne parasympatikom (NO, vazodilatácia)",
            "D) Nevyžaduje prítok krvi"
        ],
        correctIndex: 2,
        explanation: "Parasympatikus (cez NO) spôsobuje vazodilatáciu ciev v kavernóznych telesách penisu a tým erekciu. Sympatikus sa viac podieľa na ejakulácii."
    ),
    // 8
    Question(
        text: "Ktoré tvrdenie o oogenéze je správne?",
        options: [
            "A) Prebieha kontinuálne celý život ženy",
            "B) Všetky primordiálne oocyty vznikajú už prenatálne",
            "C) Začína až v puberte",
            "D) Závisí len od folikulov v nadobličkách"
        ],
        correctIndex: 1,
        explanation: "Všetky primárne oocyty vznikajú počas fetálneho vývoja a sú „zastavené“ v profáze I. Po puberte postupne dozrievajú v jednotlivých cykloch."
    ),
    // 9
    Question(
        text: "Ovulácia je:",
        options: [
            "A) Uvoľnenie zrelého oocytu z Graafovho folikulu",
            "B) Začiatok menštruácie",
            "C) Proces oplodnenia vajíčka spermiou",
            "D) Odumretie folikulu"
        ],
        correctIndex: 0,
        explanation: "Ovulácia je prasknutie dominantného folikulu a uvoľnenie zrelého oocytu do brušnej dutiny, odkiaľ ho zachytia vajcovody."
    ),
    // 10
    Question(
        text: "Ktorý hormón bezprostredne vyvoláva ovuláciu?",
        options: [
            "A) FSH peak",
            "B) LH peak",
            "C) Prolaktín",
            "D) Progesterón"
        ],
        correctIndex: 1,
        explanation: "Krátkodobé, prudké zvýšenie LH (LH peak) približne v strede cyklu spúšťa ovuláciu."
    ),
    // 11
    Question(
        text: "Corpus luteum (žlté teliesko) vzniká:",
        options: [
            "A) Z endometria po menštruácii",
            "B) Z troch folikulov naraz",
            "C) Z Graafovho folikulu po ovulácii",
            "D) V nadobličkách"
        ],
        correctIndex: 2,
        explanation: "Po ovulácii sa zvyšok folikulu luteinizuje a vytvorí žlté teliesko, ktoré produkuje hlavne progesterón."
    ),
    // 12
    Question(
        text: "Hlavný hormón luteálnej fázy menštruačného cyklu je:",
        options: [
            "A) Estrogén",
            "B) FSH",
            "C) Progesterón",
            "D) Prolaktín"
        ],
        correctIndex: 2,
        explanation: "Žlté teliesko produkuje veľa progesterónu, ktorý pripravuje endometrium na implantáciu a stabilizuje cyklus."
    ),
    // 13
    Question(
        text: "Ktorá štruktúra je miestom oplodnenia najčastejšie?",
        options: [
            "A) Vajíčkovod (ampulla tubae uterinae)",
            "B) Dutina maternice",
            "C) Vaječník",
            "D) Pošva"
        ],
        correctIndex: 0,
        explanation: "Najčastejšie dochádza k oplodneniu v rozšírenej časti vajcovodu – ampulla."
    ),
    // 14
    Question(
        text: "Endometrium je:",
        options: [
            "A) Svalová vrstva maternice",
            "B) Vnútorná slizničná výstelka maternice",
            "C) Vaječníkový epitel",
            "D) Sliznica pošvy"
        ],
        correctIndex: 1,
        explanation: "Endometrium je sliznica maternice, ktorá podlieha cyklickým zmenám vplyvom hormónov."
    ),
    // 15
    Question(
        text: "Menštruácia nastáva, keď:",
        options: [
            "A) Prudko stúpne progesterón",
            "B) Žlté teliesko zanikne a klesnú hladiny estrogénov a progesterónu",
            "C) Nastane ovulácia",
            "D) Stúpne hladina FSH"
        ],
        correctIndex: 1,
        explanation: "Bez oplodnenia corpus luteum zaniká → pokles hormónov → ischemia a odlučovanie funkčnej vrstvy endometria."
    ),
    // 16
    Question(
        text: "Ktoré tvrdenie o semenníkoch je správne?",
        options: [
            "A) Ležia v brušnej dutine kvôli vyššej teplote",
            "B) Na spermatogenézu je optimálna teplota o niečo nižšia ako telesná",
            "C) Teplota nehrá žiadnu rolu",
            "D) Teplo spermiám prospieva"
        ],
        correctIndex: 1,
        explanation: "Spermatogenéza prebieha optimálne pri mierne nižšej teplote (cca 34 °C), preto sú semenníky v miešku mimo brušnej dutiny."
    ),
    // 17
    Question(
        text: "Primárne pohlavné orgány ženy sú:",
        options: [
            "A) Maternica a pošva",
            "B) Vaječníky",
            "C) Vaječníky a vajcovody",
            "D) Vonkajšie genitálie"
        ],
        correctIndex: 1,
        explanation: "Primárne pohlavné orgány = gonády: u ženy vaječníky, u muža semenníky."
    ),
    // 18
    Question(
        text: "Estrogény u ženy spôsobujú:",
        options: [
            "A) Rast endometria a vývoj sekundárnych pohlavných znakov",
            "B) Len stimuláciu kostnej resorpcie",
            "C) Len ovuláciu bez iných efektov",
            "D) Potlačenie rastu maternice"
        ],
        correctIndex: 0,
        explanation: "Estrogény stimulujú rast maternice, proliferáciu endometria a rozvoj ženských sekundárnych znakov."
    ),
    // 19
    Question(
        text: "Progesterón:",
        options: [
            "A) Zabraňuje implantácii",
            "B) Transformuje proliferatívne endometrium na sekrečné",
            "C) Nemá vplyv na maternicu",
            "D) Produkujú ho len nadobličky"
        ],
        correctIndex: 1,
        explanation: "Progesterón z corpus luteum robí z pripraveného endometria sekrečné – vhodné na nidáciu embrya."
    ),
    // 20
    Question(
        text: "Tehotenský hormón hCG sa produkuje hlavne:",
        options: [
            "A) Hypofýzou",
            "B) Vaječníkom",
            "C) Trophoblastom/placentou",
            "D) Nadobličkami"
        ],
        correctIndex: 2,
        explanation: "Choriogonadotropín produkuje trofoblast a neskôr placenta, udržiava corpus luteum v začiatkoch gravidity."
    ),
    // 21
    Question(
        text: "Placentárny obeh umožňuje:",
        options: [
            "A) Priamy kontakt krvi matky a plodu",
            "B) Výmenu látok cez placentárnu bariéru bez miešania krvi",
            "C) Prechod všetkých látok bez obmedzenia",
            "D) Len tok krvi plodu bez výmeny plynov"
        ],
        correctIndex: 1,
        explanation: "Materská a fetálna krv sa nemieša, výmena prebieha difúziou a transportnými mechanizmami cez placentu."
    ),
    // 22
    Question(
        text: "Ktoré tvrdenie o ejakuláte je správne?",
        options: [
            "A) Tvoria ho len spermie zo semenníkov",
            "B) Väčšinu objemu tvoria sekréty prídatných žliaz",
            "C) Neobsahuje žiadne organické látky",
            "D) Je to čistý moč"
        ],
        correctIndex: 1,
        explanation: "Spermie tvoria len malý zlomok objemu, väčšina je sekrét semenných vačkov a prostaty."
    ),
    // 23
    Question(
        text: "Ktorý hormón stimuluje spermatogenézu v Sertoliho bunkách?",
        options: [
            "A) LH",
            "B) FSH",
            "C) Prolaktín",
            "D) Progesterón"
        ],
        correctIndex: 1,
        explanation: "FSH pôsobí na Sertoliho bunky a podporuje spermatogenézu; LH pôsobí na Leydigove bunky (testosterón)."
    ),
    // 24
    Question(
        text: "Čo sa deje s corpus luteum, ak nedôjde k oplodneniu?",
        options: [
            "A) Rastie ďalej počas celej luteálnej fázy",
            "B) Mení sa na corpus albicans a zaniká",
            "C) Začne produkovať hCG",
            "D) Mení sa na folikul"
        ],
        correctIndex: 1,
        explanation: "Bez hCG žlté teliesko degeneruje a mení sa na jazvičkovité corpus albicans."
    ),
    // 25
    Question(
        text: "Ktoré tvrdenie o cervikálnom hliene je správne?",
        options: [
            "A) Mení sa počas cyklu a ovplyvňuje priechodnosť pre spermie",
            "B) Je stále rovnaký",
            "C) Nepodlieha hormonálnym zmenám",
            "D) Má iba lubrikačnú funkciu bez iného významu"
        ],
        correctIndex: 0,
        explanation: "Pod vplyvom estrogénov je hlien riedky a priechodný (okolo ovulácie), pod vplyvom progesterónu hustne a bráni vstupu spermií."
    ),
    // 26
    Question(
        text: "Ktorý hormón je zvýšený počas gravidity a podporuje udržanie tehotenstva?",
        options: [
            "A) Progesterón",
            "B) FSH",
            "C) LH",
            "D) Testosterón"
        ],
        correctIndex: 0,
        explanation: "Progesterón z placenty stabilizuje endometrium, tlmí kontrakcie maternice a tým pomáha udržať graviditu."
    ),
    // 27
    Question(
        text: "Primárna amenorea znamená:",
        options: [
            "A) Zástava menštruácie po období normálneho cyklu",
            "B) Prvú menštruáciu",
            "C) Absenciu menštruácie do určitého veku (napr. 15–16 rokov)",
            "D) Menštruáciu v tehotenstve"
        ],
        correctIndex: 2,
        explanation: "Primárna amenorea = dievča nikdy nezačalo menštruovať. Sekundárna = menzes bol a prestal."
    ),
    // 28
    Question(
        text: "Ktoré tvrdenie o menštruačnom cykle je správne?",
        options: [
            "A) Folikulárna fáza nasleduje po ovulácii",
            "B) Luteálna fáza je relatívne stabilná (~14 dní)",
            "C) Luteálna fáza je najpremennejšia",
            "D) Cyklus je riadený len estrogénmi"
        ],
        correctIndex: 1,
        explanation: "Dĺžka luteálnej fázy je pomerne stabilná, mení sa skôr dĺžka folikulárnej fázy."
    ),
    // 29
    Question(
        text: "Ktorý hormón je prakticky nulový počas klimaktéria (po menopauze)?",
        options: [
            "A) FSH",
            "B) LH",
            "C) Estrogény z vaječníkov",
            "D) Prolaktín"
        ],
        correctIndex: 2,
        explanation: "Ovariálna produkcia estrogénov po menopauze dramaticky klesá, FSH a LH sú naopak zvýšené."
    ),
    // 30
    Question(
        text: "Ktorá kombinácia je správne priradená?",
        options: [
            "A) B-lymfocyt – spermatogenéza",
            "B) Leydigova bunka – testosterón",
            "C) Sertoliho bunka – progesterón",
            "D) Corpus luteum – testosterón"
        ],
        correctIndex: 1,
        explanation: "Leydigove bunky produkujú testosterón; Sertoliho bunky podporujú spermatogenézu; corpus luteum hlavne progesterón."
    )
]
// ---------- STAVBA OPORNEJ SÚSTAVY (30 otázok) ----------

let opornaSustavaQuestions: [Question] = [
    // 1
    Question(
        text: "Základnou stavebnou jednotkou kostného tkaniva v kompaktnej kosti je:",
        options: [
            "A) Chondron",
            "B) Sarkoméra",
            "C) Osteón (Haversov systém)",
            "D) Osteoklast"
        ],
        correctIndex: 2,
        explanation: "Kompaktná kosť je usporiadaná do osteónov – sústredných lamiel okolo Haversovho kanála s cievami a nervami."
    ),
    // 2
    Question(
        text: "Ktorá časť dlhých kostí je metafýza?",
        options: [
            "A) Stredná časť diafýzy",
            "B) Oblasť medzi diafýzou a epifýzou",
            "C) Kĺbová chrupka",
            "D) Periost"
        ],
        correctIndex: 1,
        explanation: "Metafýza je prechodná oblasť medzi diafýzou (telo kosti) a epifýzou (koniec kosti), kde býva rastová chrupka."
    ),
    // 3
    Question(
        text: "Periost je:",
        options: [
            "A) Vnútorná výstelka dreňovej dutiny",
            "B) Väzivový obal povrchu kosti bohatý na cievy a nervy",
            "C) Kĺbová chrupka",
            "D) Špongiózna kosť"
        ],
        correctIndex: 1,
        explanation: "Periost pokrýva povrch kosti (okrem kĺbových plôch), obsahuje cievy, nervy a osteoprogenitorové bunky – dôležitý pre rast a hojenie."
    ),
    // 4
    Question(
        text: "Endost je:",
        options: [
            "A) Vonkajší obal kosti",
            "B) Vnútorná výstelka kostných dutín a Haversových kanálov",
            "C) Elastická chrupka",
            "D) Kĺbové púzdro"
        ],
        correctIndex: 1,
        explanation: "Endost vystiela dreňovú dutinu a vnútro kostných kanálov, obsahuje osteoblasty a osteoklasty."
    ),
    // 5
    Question(
        text: "Osteoblast je bunka, ktorá:",
        options: [
            "A) Resorbuje (rozpúšťa) kosť",
            "B) Tvorí novú kosť a kostnú matrix",
            "C) Produkuje krvné bunky",
            "D) Tvorí chrupku"
        ],
        correctIndex: 1,
        explanation: "Osteoblasty produkujú organickú zložku kostnej matrix (osteoid) a podieľajú sa na mineralizácii."
    ),
    // 6
    Question(
        text: "Osteoklast je:",
        options: [
            "A) Multinukleárna bunka, ktorá resorbuje kosť",
            "B) Prekurzor osteoblastu",
            "C) Krvná bunka",
            "D) Chondrocyt"
        ],
        correctIndex: 0,
        explanation: "Osteoklasty sú veľké multinukleárne bunky vznikajúce z monocytovo-makrofágovej línie a odbúravajú kostné tkanivo."
    ),
    // 7
    Question(
        text: "Špongiózna kosť (spongióza) je tvorená:",
        options: [
            "A) Hustými paralelnými lamelami bez dutín",
            "B) Sieťou kostných trámcov s medzerami vyplnenými dreňou",
            "C) Čistou chrupkou",
            "D) Len periostom"
        ],
        correctIndex: 1,
        explanation: "Spongiózna kosť vytvára trámcovitú štruktúru, ktorá znižuje hmotnosť a rozkladá zaťaženie; medzery vyplňuje kostná dreň."
    ),
    // 8
    Question(
        text: "Ktoré tvrdenie o červenej kostnej dreni je správne?",
        options: [
            "A) Nachádza sa len v detstve",
            "B) Je miestom krvotvorby (hematopoézy)",
            "C) Je tvorená prevažne tukom",
            "D) Nachádza sa iba v diafýzach dlhých kostí u dospelých"
        ],
        correctIndex: 1,
        explanation: "Červená dreň tvorí krvné bunky; u dospelých pretrváva hlavne v plochých kostiach a epimetafýzach niektorých dlhých kostí."
    ),
    // 9
    Question(
        text: "Žltá kostná dreň je charakteristická tým, že:",
        options: [
            "A) Je bohatá na tukové bunky",
            "B) Je hlavné miesto hematopoézy",
            "C) Je len v lebke",
            "D) Nachádza sa len u detí"
        ],
        correctIndex: 0,
        explanation: "Žltá dreň má vysoký obsah tuku; pri potrebe (ťažké krvácanie) sa môže čiastočne zmeniť späť na hematopoetickú."
    ),
    // 10
    Question(
        text: "Osiálny skelet zahŕňa:",
        options: [
            "A) Končatiny a pletence",
            "B) Lebku, chrbticu, rebrá, hrudnú kosť",
            "C) Len lebku",
            "D) Len končatiny"
        ],
        correctIndex: 1,
        explanation: "Axialny (osiálny) skelet tvorí os tela: lebka, chrbtica, hrudník (rebrá, sternum)."
    ),
    // 11
    Question(
        text: "Apendikulárny skelet zahŕňa:",
        options: [
            "A) Len chrbticu",
            "B) Lebku a hrudník",
            "C) Končatiny a pletence (ramenný, panvový)",
            "D) Len dolné končatiny"
        ],
        correctIndex: 2,
        explanation: "Apendikulárny skelet = horné a dolné končatiny + ramenný a panvový pletenec."
    ),
    // 12
    Question(
        text: "Hyalínna chrupka sa vyskytuje napríklad:",
        options: [
            "A) Na kĺbových plochách dlhých kostí",
            "B) V ušnici",
            "C) V epiglotis",
            "D) V medzistavcových platničkách (jadro pulposum okrem fibrozného prstenca)"
        ],
        correctIndex: 0,
        explanation: "Kĺbová chrupka je hyalínna – hladká, nízkym trením, bez ciev; výživa difúziou zo synoviálnej tekutiny."
    ),
    // 13
    Question(
        text: "Elastická chrupka je typicky v:",
        options: [
            "A) Nosovej prepážke",
            "B) Kĺbových plochách",
            "C) Ušnici a epiglottis",
            "D) Medzistavcových platničkách"
        ],
        correctIndex: 2,
        explanation: "Elastická chrupka obsahuje elastické vlákna a je ohybná, nájdeme ju v ušnici a záklopke hrtana."
    ),
    // 14
    Question(
        text: "Vláknitá (fibro-) chrupka sa vyskytuje napríklad v:",
        options: [
            "A) Medzistavcových platničkách (anulus fibrosus)",
            "B) Kĺbovej chrupke kolena",
            "C) Ušnici",
            "D) Rohovke oka"
        ],
        correctIndex: 0,
        explanation: "Fibrochrupka má veľa kolagénových vlákien a veľkú pevnosť v ťahu – v diskoch, symfýzach, meniskoch."
    ),
    // 15
    Question(
        text: "Synoviálny kĺb je charakterizovaný tým, že:",
        options: [
            "A) Nemá kĺbovú dutinu",
            "B) Má kĺbovú dutinu vyplnenú synoviálnou tekutinou",
            "C) Kosti sú pevne zrastené",
            "D) Spája kosti chrupkou bez dutiny"
        ],
        correctIndex: 1,
        explanation: "Typický pohyblivý kĺb má kĺbovú dutinu, synoviálnu tekutinu, kĺbové púzdro a často väzy a menisky."
    ),
    // 16
    Question(
        text: "Synarthrózy sú:",
        options: [
            "A) Vysoko pohyblivé kĺby",
            "B) Nepohyblivé alebo len minimálne pohyblivé spojenia kostí",
            "C) Iba chrupavkové spojenia",
            "D) Spojenia len na končatinách"
        ],
        correctIndex: 1,
        explanation: "Synarthrózy zahŕňajú pevné spojenia kostí (švy lebky, synchondrózy, symfýzy) s minimálnym pohybom."
    ),
    // 17
    Question(
        text: "Diarthrózy sú:",
        options: [
            "A) Pevné spojenia kostí",
            "B) Pohyblivé kĺby so synoviálnou dutinou",
            "C) Spojenia len chrupkou bez tekutiny",
            "D) Len švy na lebke"
        ],
        correctIndex: 1,
        explanation: "Diarthróza = synoviálny kĺb, typické pohyblivé spojenie kostí (napr. koleno, rameno)."
    ),
    // 18
    Question(
        text: "Ktoré tvrdenie o kolagéne v kosti je správne?",
        options: [
            "A) Kolagén je len v chrupke, nie v kosti",
            "B) Kolagénové vlákna dodávajú kosti pevnosť v ťahu",
            "C) Kolagén je zodpovedný za mineralizáciu",
            "D) Kosť je tvorená len minerálmi bez organickej zložky"
        ],
        correctIndex: 1,
        explanation: "Organická zložka kosti (najmä kolagén typu I) zabezpečuje odolnosť v ťahu, minerály (hydroxyapatit) pevnosť v tlaku."
    ),
    // 19
    Question(
        text: "Minerálna zložka kostí je tvorená hlavne:",
        options: [
            "A) Fosforečnanom vápenatým (hydroxyapatit)",
            "B) Chloridom sodným",
            "C) Síranom horečnatým",
            "D) Uhličitanom draselným"
        ],
        correctIndex: 0,
        explanation: "Hydroxyapatit Ca₁₀(PO₄)₆(OH)₂ je hlavný minerál kosti, zodpovedný za jej tvrdosť."
    ),
    // 20
    Question(
        text: "Rast do dĺžky u dlhých kostí prebieha:",
        options: [
            "A) Na povrchu periostu",
            "B) V epifyzárnych rastových chrupkách",
            "C) Len v diafýze",
            "D) V špongióznej kosti len u starších"
        ],
        correctIndex: 1,
        explanation: "Dĺžkový rast zabezpečuje proliferácia chrupky v rastových platničkách medzi epifýzou a diafýzou."
    ),
    // 21
    Question(
        text: "Rast do hrúbky (appozícia) prebieha hlavne:",
        options: [
            "A) V endoste len",
            "B) V perioste činnosťou osteoblastov",
            "C) V červenej dreni",
            "D) Len v epifýze"
        ],
        correctIndex: 1,
        explanation: "Osteoblasty v perioste ukladajú novú kosť na povrchu, čo vedie k hrubnutiu kosti."
    ),
    // 22
    Question(
        text: "Ktorá štruktúra chráni kostnú dreň v stavcoch?",
        options: [
            "A) Telá stavcov a oblúky",
            "B) Medzistavcové platničky",
            "C) Tŕňové výbežky",
            "D) Rebierka"
        ],
        correctIndex: 0,
        explanation: "Telá a oblúky stavcov tvoria chrbticový kanál, v ktorom leží miecha; vo vnútri tiel stavcov je spongióza s dreňou."
    ),
    // 23
    Question(
        text: "Medzistavcová platnička (disk) sa skladá z:",
        options: [
            "A) Čisto hyalínnej chrupky",
            "B) Vláknitého prstenca a rôsolovitého jadra",
            "C) Elastickej chrupky",
            "D) Čistej spongióznej kosti"
        ],
        correctIndex: 1,
        explanation: "Disk má pevný anulus fibrosus (fibrochrupka) a gelovité nucleus pulposum, ktoré tlmí nárazy."
    ),
    // 24
    Question(
        text: "Ktoré tvrdenie o lebke je správne?",
        options: [
            "A) Tvorí ju len neurokranium",
            "B) Neurokranium chráni mozog, viscerokranium tvorí kostru tváre",
            "C) Viscerokranium chráni miechu",
            "D) Lebka nemá žiadne švy"
        ],
        correctIndex: 1,
        explanation: "Lebka sa delí na mozgovú časť (neurokranium) a tvárovú časť (viscerokranium). Švy sú typické pevné spojenia kostí lebky."
    ),
    // 25
    Question(
        text: "Ktoré kĺby patria medzi symfýzy (chrupavkové spojenie)?",
        options: [
            "A) Kolenný kĺb",
            "B) Lakte",
            "C) Lonová spona (symphysis pubica)",
            "D) Ramenný kĺb"
        ],
        correctIndex: 2,
        explanation: "Symfýza je fibrochrupkové spojenie s malým pohybom – napr. lonová spona, medzistavcové platničky."
    ),
    // 26
    Question(
        text: "Ktorá z nasledujúcich kostí je plochá kosť?",
        options: [
            "A) Stehenná kosť",
            "B) Hrudná kosť (sternum)",
            "C) Kosti zápästia",
            "D) Kľúčna kosť (klavikula)"
        ],
        correctIndex: 1,
        explanation: "Ploché kosti: lopata bedrová, lopatka, rebrá, sternum, lebečné kosti atď."
    ),
    // 27
    Question(
        text: "Ktoré tvrdenie o kostnom remodelovaní je správne?",
        options: [
            "A) Prebieha len v detstve",
            "B) Je dynamický proces tvorby a resorpcie kosti počas celého života",
            "C) Je to patologický jav",
            "D) Týka sa len plochých kostí"
        ],
        correctIndex: 1,
        explanation: "Kosť je živé tkanivo – neustále sa prestavuje podľa zaťaženia (osteoblasty vs osteoklasty)."
    ),
    // 28
    Question(
        text: "Ktorá kombinácia je správne priradená?",
        options: [
            "A) Osteocyt – zrelá kostná bunka v lakúne",
            "B) Osteoklast – tvorba osteoidu",
            "C) Osteoblast – resorpcia minerálu",
            "D) Chondrocyt – tvorba periostu"
        ],
        correctIndex: 0,
        explanation: "Osteocyt je zrelý osteoblast „uväznený“ v kostnej matrix (lakúna); udržiava metabolizmus kosti."
    ),
    // 29
    Question(
        text: "Synoviálna tekutina v kĺbe:",
        options: [
            "A) Nemá žiadnu výživovú funkciu",
            "B) Vyživuje kĺbovú chrupku a znižuje trenie",
            "C) Je to čistá krv",
            "D) Je tvorená len vodou bez iných látok"
        ],
        correctIndex: 1,
        explanation: "Synoviálna tekutina obsahuje kyselinu hyalurónovú, proteíny a živiny pre avaskulárnu kĺbovú chrupku."
    ),
    // 30
    Question(
        text: "Ktoré tvrdenie o opornej sústave je správne?",
        options: [
            "A) Slúži len na pasívnu oporu, nemá vzťah k pohybu",
            "B) Chráni vnútorné orgány, umožňuje pohyb a podieľa sa na metabolizme minerálov",
            "C) Nemá žiadnu vztah ku krvotvorbe",
            "D) Nie je inervovaná ani cievne zásobená"
        ],
        correctIndex: 1,
        explanation: "Kostrová sústava: mechanická opora, ochrana (lebka, hrudník), spolu so svalmi umožňuje pohyb, skladuje Ca²⁺/P a obsahuje krvotvornú dreň."
    )
]
// ---------- POHYBOVÁ SÚSTAVA (30 otázok) ----------

let pohybovaQuestions: [Question] = [
    // 1
    Question(
        text: "Základnou funkčnou jednotkou priečne pruhovaného svalu je:",
        options: [
            "A) Myofibrila",
            "B) Sarkoméra",
            "C) Sarkoplazmatické retikulum",
            "D) Motorická jednotka"
        ],
        correctIndex: 1,
        explanation: "Sarkoméra je úsek myofibrily medzi dvoma Z-líniami. Obsahuje aktín a myozín a pri kontrakcii sa skracuje."
    ),
    // 2
    Question(
        text: "Pri kontrakcii kostrového svalu podľa sliding filament theory:",
        options: [
            "A) Aktín a myozín sa skracujú",
            "B) Aktínové a myozínové filamenty po sebe kĺžu, dĺžka filamentov sa nemení",
            "C) Mení sa dĺžka len myozínu",
            "D) Dĺžka sarkoméry sa nemení"
        ],
        correctIndex: 1,
        explanation: "Filamenty po sebe kĺžu, sarkoméra sa skracuje (Z-línie bližšie), ale samotné filamenty nemenia dĺžku."
    ),
    // 3
    Question(
        text: "Motorická jednotka je:",
        options: [
            "A) Jedna svalová bunka",
            "B) Jedno motorické neurónové vlákno a všetky svalové vlákna, ktoré inervuje",
            "C) Skupina kostí a svalov",
            "D) Spojenie dvoch kĺbov"
        ],
        correctIndex: 1,
        explanation: "Jeden motoneurón môže inervovať desiatky až tisíce vlákien. Jemné pohyby = malé jednotky, hrubá sila = veľké jednotky."
    ),
    // 4
    Question(
        text: "Na nervosvalovej platničke je hlavným neurotransmiterom:",
        options: [
            "A) Glutamát",
            "B) Noradrenalín",
            "C) Acetylcholín",
            "D) GABA"
        ],
        correctIndex: 2,
        explanation: "Acetylcholín sa uvoľní z motorického neurónu, viaže sa na nikotínové receptory na svalovej membráne a vyvolá end-plate potenciál."
    ),
    // 5
    Question(
        text: "Ktorý ión je kľúčový pre spustenie kontrakcie svalového vlákna?",
        options: [
            "A) Na⁺",
            "B) K⁺",
            "C) Ca²⁺",
            "D) Cl⁻"
        ],
        correctIndex: 2,
        explanation: "Ca²⁺ sa uvoľní zo sarkoplazmatického retikula, naviaže sa na troponín C, odsunie tropomyozín a umožní väzbu myozínových hláv na aktín."
    ),
    // 6
    Question(
        text: "Pri izotonickej kontrakcii:",
        options: [
            "A) Mení sa napätie svalu, dĺžka sa nemení",
            "B) Mení sa dĺžka svalu, napätie ostáva približne rovnaké",
            "C) Ani dĺžka, ani napätie sa nemení",
            "D) Kontrakcia prebieha len pri smrteľnom kŕči"
        ],
        correctIndex: 1,
        explanation: "Izotonická kontrakcia = sval sa skracuje a vykonáva pohyb pri relatívne konštantnom zaťažení (napr. zdvih činky)."
    ),
    // 7
    Question(
        text: "Pri izometrickej kontrakcii:",
        options: [
            "A) Sval sa skracuje bez napätia",
            "B) Sval vyvíja napätie bez zmeny dĺžky",
            "C) Nedochádza k vzniku napätia",
            "D) Ide len o reflexnú aktivitu"
        ],
        correctIndex: 1,
        explanation: "Izometria = rovnaká dĺžka, mení sa napätie. Typicky pri držaní bremena bez pohybu."
    ),
    // 8
    Question(
        text: "Rýchle (biele, typ II) svalové vlákna sú charakteristické:",
        options: [
            "A) Pomalou kontrakciou a veľkou vytrvalosťou",
            "B) Rýchlou kontrakciou a menšou odolnosťou voči únave",
            "C) Vysokým obsahom myoglobínu a mitochondrií",
            "D) Použitím prevažne aeróbneho metabolizmu"
        ],
        correctIndex: 1,
        explanation: "Rýchle vlákna využívajú viac anaeróbnu glykolýzu, sú vhodné na krátke výkony vysokou silou, ale rýchlejšie sa unavia."
    ),
    // 9
    Question(
        text: "Pomalé (červené, typ I) vlákna:",
        options: [
            "A) Majú málo mitochondrií a myoglobínu",
            "B) Sú ideálne na krátke výbuchy sily",
            "C) Majú veľa mitochondrií a myoglobínu, sú odolné voči únave",
            "D) Vyskytujú sa len v hladkom svalstve"
        ],
        correctIndex: 2,
        explanation: "Typ I využíva hlavne aeróbny metabolizmus, vhodný na vytrvalosť (posturálne svaly, dlhodobý beh)."
    ),
    // 10
    Question(
        text: "Tetanus kostrového svalu (fyziologický, nie infekcia):",
        options: [
            "A) Je jednorazový zášklb",
            "B) Je spojenie mnohých rýchlych zášklbov do plynulej kontrakcie",
            "C) Je vždy patologický",
            "D) Nevzniká pri fyziologických pohyboch"
        ],
        correctIndex: 1,
        explanation: "Pri vysokofrekvenčnej stimulácii sa jednotlivé zášklby spoja do plynulej tetanickej kontrakcie."
    ),
    // 11
    Question(
        text: "Základná energetická zásoba na prvé sekundy maximálneho svalového výkonu je:",
        options: [
            "A) Glykogén v pečeni",
            "B) Triacylglyceroly v tukovom tkanive",
            "C) Kreatínfosfát v svale",
            "D) Glukóza v krvi"
        ],
        correctIndex: 2,
        explanation: "Kreatínfosfát rýchlo regeneruje ATP v prvých sekundách intenzívnej záťaže, kým sa „rozbehne“ glykolýza a oxidatívna fosforylácia."
    ),
    // 12
    Question(
        text: "Hladké svalstvo sa od priečne pruhovaného líši tým, že:",
        options: [
            "A) Je pod volnou kontrolou",
            "B) Má sarkoméry usporiadané rovnako",
            "C) Nemá priečne pruhovanie a je riadené autonómne",
            "D) Vôbec nereaguje na Ca²⁺"
        ],
        correctIndex: 2,
        explanation: "Hladké svalstvo nemá typické sarkoméry, kontrakcia je pomalšia a dlhšia, riadená väčšinou vegetatívne."
    ),
    // 13
    Question(
        text: "Agonista pri pohybe je sval, ktorý:",
        options: [
            "A) Je hlavný vykonávateľ daného pohybu",
            "B) Pohyb brzdí (antagonista)",
            "C) Stabilizuje kĺb (synergista)",
            "D) Nemá funkčný význam"
        ],
        correctIndex: 0,
        explanation: "Agonista je „hlavný sval pohybu“, antagonista vykonáva opačný pohyb a synergisti pomáhajú stabilizovať."
    ),
    // 14
    Question(
        text: "Antagonistické svaly sú:",
        options: [
            "A) Svaly, ktoré vykonávajú rovnaký pohyb",
            "B) Svaly s opačným účinkom v tom istom kĺbe",
            "C) Svaly bez funkcie",
            "D) Svaly trupu"
        ],
        correctIndex: 1,
        explanation: "Klasický príklad: biceps (flexia lakťa) a triceps (extenzia lakťa)."
    ),
    // 15
    Question(
        text: "Ktorý typ svalového vlákna je v srdcovom svale?",
        options: [
            "A) Hladké svalstvo",
            "B) Priečne pruhované kostrové svalstvo",
            "C) Špecifické priečne pruhované svalstvo srdca (myokard)",
            "D) Zmes hladkého a kostrového"
        ],
        correctIndex: 2,
        explanation: "Myokard je funkčne aj morfologicky špecifický: priečne pruhovaný, ale autonómne riadený, s interkalárnymi diskami."
    ),
    // 16
    Question(
        text: "Ktorý z nasledujúcich faktorov zvyšuje svalovú silu pri fyziologickej kontrakcii?",
        options: [
            "A) Rekrutácia väčšieho počtu motorických jednotiek",
            "B) Zníženie frekvencie impulzov",
            "C) Skrátenie svalu na extrémne krátku dĺžku",
            "D) Úplná absencia Ca²⁺"
        ],
        correctIndex: 0,
        explanation: "Silnejší výkon = viac aktívnych motorických jednotiek a vyššia frekvencia impulzov (až po tetanus)."
    ),
    // 17
    Question(
        text: "Hlavná úloha šľachy je:",
        options: [
            "A) Tvorba ATP v svale",
            "B) Prenos sily zo svalu na kosť",
            "C) Produkcia synoviálnej tekutiny",
            "D) Vedenie nervových vzruchov"
        ],
        correctIndex: 1,
        explanation: "Šľacha je husté kolagénové väzivo, ktoré prenáša kontrakčnú silu svalu na kostru."
    ),
    // 18
    Question(
        text: "Svalové vretienko (muscle spindle):",
        options: [
            "A) Meria napätie v šľache",
            "B) Je kožný receptor bolesti",
            "C) Reaguje na dĺžku a rýchlosť natiahnutia svalu",
            "D) Nemá žiadnu reflexnú úlohu"
        ],
        correctIndex: 2,
        explanation: "Svalové vretienka sú proprioceptory, ktoré sa podieľajú na monosynaptickom natiahovom reflexe (napr. patelárny)."
    ),
    // 19
    Question(
        text: "Golgiho šľachové telieska:",
        options: [
            "A) Reagujú na napätie v šľache",
            "B) Merajú teplotu krvi",
            "C) Sú chemoreceptory",
            "D) Sú v koži"
        ],
        correctIndex: 0,
        explanation: "Golgiho telieska chránia sval a šľachu pred nadmerným napätím inhibíciou motoneurónov."
    ),
    // 20
    Question(
        text: "Ktoré tvrdenie o hladkom svalstve je správne?",
        options: [
            "A) Má neuromuskulárnu platničku ako kostrový sval",
            "B) Kontrahuje sa pomalšie a môže dlhodobo udržovať tonus",
            "C) Neobsahuje aktín ani myozín",
            "D) Vôbec nereaguje na hormóny"
        ],
        correctIndex: 1,
        explanation: "Hladké svaly majú inú organizáciu aktínu/moyzínu, ale dokážu dlhodobo udržiavať tonus s nízkou spotrebou energie a reagujú tiež na hormóny (napr. oxytocín, adrenalín)."
    ),
    // 21
    Question(
        text: "Čo je „origin“ (začiatok) svalu?",
        options: [
            "A) Pohyblivejší úpon svalu",
            "B) Menej pohyblivé miesto úponu (často proximálne)",
            "C) Časť svalu so šľachou v strede",
            "D) Miesto, kde vzniká ATP"
        ],
        correctIndex: 1,
        explanation: "Začiatok (origo) je fixnejší úpon, úpon (insertio) je na kostiach, ktoré sa pri kontrakcii viac pohybujú."
    ),
    // 22
    Question(
        text: "Tonický sval sa charakteristicky:",
        options: [
            "A) Rýchlo sťahuje a rýchlo unaví",
            "B) Udržuje dlhodobo nízky tonus, dôležitý pre držanie tela",
            "C) Nemá žiaden tonus",
            "D) Vyskytuje sa len v srdci"
        ],
        correctIndex: 1,
        explanation: "Posturálne (tonické) svaly sú bohaté na pomalé vlákna a sú dôležité pre udržiavanie polohy tela."
    ),
    // 23
    Question(
        text: "Čo sa stane, ak dôjde k úplnej denervácii kostrového svalu?",
        options: [
            "A) Sval pracuje ďalej normálne",
            "B) Sval postupne atrofuje",
            "C) Sval sa zmení na hladké svalstvo",
            "D) Sval sa zväčší"
        ],
        correctIndex: 1,
        explanation: "Bez nervovej stimulácie svalové vlákna degenerujú a sval atrofuje."
    ),
    // 24
    Question(
        text: "Ktorá štruktúra stabilizuje kĺb a usmerňuje pohyb?",
        options: [
            "A) Len kĺbová chrupka",
            "B) Väzy, svaly a kĺbové púzdro",
            "C) Len kostná dreň",
            "D) Epifýzová platnička"
        ],
        correctIndex: 1,
        explanation: "Stabilitu kĺbov zabezpečujú pasívne prvky (väzy, púzdro) aj aktívne (svaly a ich šľachy)."
    ),
    // 25
    Question(
        text: "Aký typ svalovej kontrakcie prebieha pri kontrolovanom spúšťaní bremena (napr. činky) smerom dole?",
        options: [
            "A) Koncentrická",
            "B) Excentrická",
            "C) Izometrická",
            "D) Tonická bez mechanickej práce"
        ],
        correctIndex: 1,
        explanation: "Excentrická kontrakcia: sval sa predlžuje, ale stále vyvíja napätie (brzdenie pohybu)."
    ),
    // 26
    Question(
        text: "Ako ovplyvní hypokalcémia neuromuskulárnu dráždivosť?",
        options: [
            "A) Zníži dráždivosť, vedie k paralýze",
            "B) Zvýši dráždivosť, môže viesť k tetánii",
            "C) Nemá efekt",
            "D) Zastaví tvorbu ATP"
        ],
        correctIndex: 1,
        explanation: "Nízky Ca²⁺ zvyšuje excitabilitu membrány, môže vzniknúť tetánia (spontánne kŕče)."
    ),
    // 27
    Question(
        text: "Ktoré tvrdenie o neuromuskulárnej platničke je správne?",
        options: [
            "A) Je to chemická synapsa medzi motorickým neurónom a svalovým vláknom",
            "B) Je to elektrická synapsa",
            "C) Využíva glutamát ako mediátor",
            "D) Je súčasť CNS"
        ],
        correctIndex: 0,
        explanation: "Nervosvalová platnička je typ chemickej synapsy s mediátorom ACh a nikotínovými receptormi na svalovej membráne."
    ),
    // 28
    Question(
        text: "Čo je rigor mortis (posmrtná stuhnutosť)?",
        options: [
            "A) Svalová paralýza pri hypokalémii",
            "B) Dlhodobý tetanus pri hyperkalcémii",
            "C) Stuhnutosť svalov po smrti v dôsledku nedostatku ATP",
            "D) Akútny svalový kŕč pri dehydratácii"
        ],
        correctIndex: 2,
        explanation: "Po smrti sa ATP nemôže dopĺňať, mostíky aktín-myozín zostanú „zamknuté“ a svaly stuhnú, kým sa proteíny nezačnú rozkladať."
    ),
    // 29
    Question(
        text: "Pri dlhodobej vytrvalostnej záťaži sa vo svaloch zvyšuje:",
        options: [
            "A) Počet mitochondrií a kapilár",
            "B) Len veľkosť svalových vlákien bez iných zmien",
            "C) Hlavne množstvo tukového tkaniva",
            "D) Len rýchle vlákna typu II"
        ],
        correctIndex: 0,
        explanation: "Vytrvalostný tréning vedie k tzv. „metabolickému“ prispôsobeniu: viac mitochondrií, kapilarizácia, lepšie využitie O₂."
    ),
    // 30
    Question(
        text: "Ktoré tvrdenie o spojení pohybovej a nervovej sústavy je správne?",
        options: [
            "A) Svaly pracujú úplne nezávisle od nervového systému",
            "B) Každý vôľový pohyb vyžaduje činnosť motorickej kôry a motoneurónov miechy",
            "C) Reflexy nevyužívajú svaly",
            "D) Pyramídová dráha vedie hlavne senzorické informácie"
        ],
        correctIndex: 1,
        explanation: "Vôľové pohyby vznikajú v mozgovej kôre (motorická kôra) a sú realizované cez zostupné dráhy na motoneuróny miechy a periférne nervy."
    )
]
// ---------- TELOVÉ TEKUTINY (30 otázok) ----------

let teloveTekutinyQuestions: [Question] = [
    // 1
    Question(
        text: "Ktoré dve hlavné kompartmenty vnútorného prostredia rozlišujeme?",
        options: [
            "A) Intracelulárna a extracelulárna tekutina",
            "B) Krv a moč",
            "C) Lymfa a sliny",
            "D) Pot a likvor"
        ],
        correctIndex: 0,
        explanation: "Základné delenie: intracelulárna tekutina (vo vnútri buniek) a extracelulárna tekutina (plazma + intersticiálna tekutina + lymfa atď.)."
    ),
    // 2
    Question(
        text: "Hlavným katiónom intracelulárnej tekutiny je:",
        options: [
            "A) Na⁺",
            "B) K⁺",
            "C) Ca²⁺",
            "D) Cl⁻"
        ],
        correctIndex: 1,
        explanation: "Intracelulárne prostredie je bohaté na K⁺ a Mg²⁺, extracelulárne na Na⁺ a Ca²⁺."
    ),
    // 3
    Question(
        text: "Hlavným katiónom extracelulárnej tekutiny je:",
        options: [
            "A) K⁺",
            "B) Na⁺",
            "C) Mg²⁺",
            "D) H⁺"
        ],
        correctIndex: 1,
        explanation: "Na⁺ je dominantný katión ECT a kľúčový pre objem extracelulárnej tekutiny."
    ),
    // 4
    Question(
        text: "Ktorá zložka extracelulárnej tekutiny tvorí najväčší objem?",
        options: [
            "A) Krvná plazma",
            "B) Intersticiálna (tkanivová) tekutina",
            "C) Lymfa",
            "D) Likvor"
        ],
        correctIndex: 1,
        explanation: "Najväčšiu časť ECT tvorí intersticiálna tekutina medzi bunkami, plazma je menší, ale fyziologicky zásadný podkompartment."
    ),
    // 5
    Question(
        text: "Ktoré tvrdenie o krvných elementoch je správne?",
        options: [
            "A) Erytrocyty majú jadro",
            "B) Erytrocyty sú hlavne na prenos O₂ a CO₂",
            "C) Leukocyty prenášajú O₂",
            "D) Trombocyty sú bunky s jadrom"
        ],
        correctIndex: 1,
        explanation: "Zrelé erytrocyty nemajú jadro a sú špecializované na transport plynov; leukocyty sú imunitné bunky, trombocyty sú bezjadrové fragmenty megakaryocytov."
    ),
    // 6
    Question(
        text: "Plazma je:",
        options: [
            "A) Krv bez leukocytov",
            "B) Krv bez erytrocytov a trombocytov",
            "C) Krv bez všetkých buniek (tekutá zložka) vrátane koagulačných faktorov",
            "D) Krv po zrazení"
        ],
        correctIndex: 2,
        explanation: "Plazma = tekutá zložka krvi vrátane koagulačných faktorov; sérum = plazma bez fibrinogénu po zrazení."
    ),
    // 7
    Question(
        text: "Onkotický tlak plazmy je daný hlavne:",
        options: [
            "A) Glukózou",
            "B) Sodíkom",
            "C) Plazmatickými proteínmi (najmä albumínom)",
            "D) Vápnikom"
        ],
        correctIndex: 2,
        explanation: "Proteíny sú osmoticky aktívne, ale neprechádzajú voľne cez kapilárnu stenu → držia vodu v intravaskulárnom priestore."
    ),
    // 8
    Question(
        text: "Edém (opuch) môže vzniknúť pri:",
        options: [
            "A) Zvýšení onkotického tlaku plazmy",
            "B) Znížení hydrostatického tlaku v kapilárach",
            "C) Znížení onkotického tlaku plazmatických bielkovín",
            "D) Normálnom Starlingovom rovnovážnom stave"
        ],
        correctIndex: 2,
        explanation: "Nízky onkotický tlak (napr. pri hypoalbuminémii) → voda „uniká“ do interstícia → edémy."
    ),
    // 9
    Question(
        text: "Lymfa vzniká hlavne:",
        options: [
            "A) Filtráciou plazmy v glomeruloch",
            "B) Filtráciou tkanivového moku do lymfatických kapilár",
            "C) Sekréciou v pečeni",
            "D) Z potných žliaz"
        ],
        correctIndex: 1,
        explanation: "Lymfa je vlastne tkanivový mok, ktorý sa vracia lymfatickým systémom späť do krvného obehu."
    ),
    // 10
    Question(
        text: "Krvný objem u dospelého človeka je približne:",
        options: [
            "A) 1–2 litre",
            "B) 3–4 litre",
            "C) 5–6 litrov",
            "D) 8–10 litrov"
        ],
        correctIndex: 2,
        explanation: "Priemerne ~70 ml/kg, čo pri ~70 kg človeku vychádza okolo 5 litrov."
    ),
    // 11
    Question(
        text: "Aký podiel telesnej hmotnosti u dospelého človeka tvorí voda približne?",
        options: [
            "A) 20 %",
            "B) 40 %",
            "C) 60 %",
            "D) 80 %"
        ],
        correctIndex: 2,
        explanation: "Klasická hodnota je ~60 % (u žien a obéznych menej, u detí viac)."
    ),
    // 12
    Question(
        text: "Intracelulárna tekutina tvorí približne:",
        options: [
            "A) 1/3 celkovej telesnej vody",
            "B) 2/3 celkovej telesnej vody",
            "C) 1/4 celkovej telesnej vody",
            "D) 3/4 celkovej telesnej vody"
        ],
        correctIndex: 1,
        explanation: "Zhruba 2/3 vody sú intracelulárne, 1/3 extracelulárne."
    ),
    // 13
    Question(
        text: "Ktoré tvrdenie o acidobázickej rovnováhe je správne?",
        options: [
            "A) Normálne pH arteriálnej krvi je približne 6,8",
            "B) Normálne pH arteriálnej krvi je približne 7,35–7,45",
            "C) Krv nemá pufrovací systém",
            "D) pH krvi nie je dôležité pre enzýmy"
        ],
        correctIndex: 1,
        explanation: "Fyziologické pH krvi je úzko udržiavané okolo 7,4; väčšie odchýlky sú nezlučiteľné so životom."
    ),
    // 14
    Question(
        text: "Hlavný bikarbonátový pufrovací systém krvi zahŕňa:",
        options: [
            "A) H₂CO₃ / HCO₃⁻",
            "B) HCl / Cl⁻",
            "C) H₂PO₄⁻ / HPO₄²⁻",
            "D) Hemoglobín / oxyhemoglobín"
        ],
        correctIndex: 0,
        explanation: "Bikarbonátový pufor (kyselina uhličitá / bikarbonát) je kvantitatívne najvýznamnejší pufrovací systém v plazme."
    ),
    // 15
    Question(
        text: "Respiračná acidóza vzniká pri:",
        options: [
            "A) Hyperventilácii",
            "B) Hypoventilácii a hromadení CO₂",
            "C) Stratách H⁺ obličkami",
            "D) Nadmernom vracaní"
        ],
        correctIndex: 1,
        explanation: "Nedostatočné vetranie → CO₂ stúpa → tvorí sa viac H₂CO₃ a H⁺ → pH klesá (acidóza)."
    ),
    // 16
    Question(
        text: "Respiračná alkalóza vzniká pri:",
        options: [
            "A) Hypoventilácii",
            "B) Hyperventilácii s poklesom pCO₂",
            "C) Metabolickom hnačkovom syndróme",
            "D) Zlyhaní obličiek"
        ],
        correctIndex: 1,
        explanation: "Hyperventilácia (stres, panická ataka, výška) → nadmerné vydychovanie CO₂ → posun pH do alkalózy."
    ),
    // 17
    Question(
        text: "Metabolická acidóza môže vzniknúť pri:",
        options: [
            "A) Nadmernom vracaní",
            "B) Hyperventilácii",
            "C) Ketoacidóze pri DM, hnačkách, laktátovej acidóze",
            "D) Chronickej retencii CO₂"
        ],
        correctIndex: 2,
        explanation: "Metabolická acidóza = nárast nevolatilných kyselín alebo strata bikarbonátu (hnačky, renálne zlyhanie, ketoacidóza, laktátová acidóza)."
    ),
    // 18
    Question(
        text: "Ktoré tvrdenie o osmolarite je správne?",
        options: [
            "A) Osmolarita ECT a ICT je pri rovnováhe približne rovnaká",
            "B) Intracelulárna osmolarita je vždy nižšia",
            "C) Osmolarita je určená len proteínmi",
            "D) Voda prúdi proti osmotickému gradientu"
        ],
        correctIndex: 0,
        explanation: "Za normálnych podmienok je osmolarita kompartmentov rovnaká; rozdiely by viedli k posunom vody a zmenám objemu buniek."
    ),
    // 19
    Question(
        text: "Hyponatriémia znamená:",
        options: [
            "A) Zvýšenú koncentráciu Na⁺ v plazme",
            "B) Zníženú koncentráciu Na⁺ v plazme",
            "C) Zníženú koncentráciu K⁺",
            "D) Zvýšenú koncentráciu Ca²⁺"
        ],
        correctIndex: 1,
        explanation: "Hyponatriémia môže viesť k edému buniek, najmä v CNS, s neurologickými príznakmi."
    ),
    // 20
    Question(
        text: "Ktoré tvrdenie o krvnom tlaku a objeme tekutín je pravdivé?",
        options: [
            "A) Zvýšený objem ECT zvyčajne zvyšuje krvný tlak",
            "B) Objem ECT nemá vplyv na tlak",
            "C) Tlak závisí len od odporu ciev, nie od objemu",
            "D) Zníženie objemu ECT zvyšuje tlak"
        ],
        correctIndex: 0,
        explanation: "Viac tekutiny v cievach = vyšší náplň a tlak (ak sú ostatné faktory relatívne konštantné)."
    ),
    // 21
    Question(
        text: "Hematokrit vyjadruje:",
        options: [
            "A) Podiel plazmy na celkovom objeme krvi",
            "B) Podiel krvných buniek (najmä erytrocytov) na objeme krvi",
            "C) Počet leukocytov",
            "D) Koncentráciu hemoglobínu"
        ],
        correctIndex: 1,
        explanation: "Hematokrit je objemový podiel buniek (predovšetkým erytrocytov) v krvi. Zvýšený = „hustejšia“ krv."
    ),
    // 22
    Question(
        text: "Ktorá tekutina mechanicky a metabolicky chráni mozog a miechu?",
        options: [
            "A) Synoviálna tekutina",
            "B) Lymfa",
            "C) Mozgomiešny mok (likvor)",
            "D) Perilymfa"
        ],
        correctIndex: 2,
        explanation: "Likvor tlmí nárazy, podieľa sa na výmene látok medzi krvou a CNS a udržiava stabilné prostredie."
    ),
    // 23
    Question(
        text: "Primárna úloha lymfatického systému z hľadiska tekutín je:",
        options: [
            "A) Tvorba moču",
            "B) Odvod prebytočnej tekutiny a bielkovín z interstícia späť do krvi",
            "C) Tvorba hormónov",
            "D) Tvorba glukózy"
        ],
        correctIndex: 1,
        explanation: "Bez lymfatického návratu by sa plazmatické bielkoviny a tekutiny hromadili v interstíciu (ťažké edémy)."
    ),
    // 24
    Question(
        text: "Ktorý hormón je kľúčový pre zadržiavanie vody v obličkách?",
        options: [
            "A) Inzulín",
            "B) ADH (vazopresín)",
            "C) TSH",
            "D) Prolaktín"
        ],
        correctIndex: 1,
        explanation: "ADH zvyšuje priepustnosť zberných kanálikov pre vodu → viac vody sa reabsorbuje, menej sa vylúči."
    ),
    // 25
    Question(
        text: "Ktorý hormón zvyšuje reabsorpciu Na⁺ a vody v distálnom nefróne?",
        options: [
            "A) Aldosterón",
            "B) Parathormón",
            "C) Kalcitonín",
            "D) Melatonín"
        ],
        correctIndex: 0,
        explanation: "Aldosterón zvyšuje reabsorpciu Na⁺ (a sekundárne vody) a zvyšuje vylučovanie K⁺."
    ),
    // 26
    Question(
        text: "Hyperhydratácia (nadbytok vody) bez primeraného príjmu solí vedie k:",
        options: [
            "A) Hypernatriémii",
            "B) Hyponatriémii a zriedeniu plazmy",
            "C) Hyperkaliémii",
            "D) Žiadnej zmene elektrolytov"
        ],
        correctIndex: 1,
        explanation: "Pri nadbytku vody sa Na⁺ „rozriedi“ → hyponatriémia, môže spôsobiť edém mozgu a neurologické príznaky."
    ),
    // 27
    Question(
        text: "Ktoré tvrdenie o pufrovacích systémoch je správne?",
        options: [
            "A) Hemoglobín sa nepodieľa na pufrovaní",
            "B) Pufre dokážu udržať pH aj pri nekonečnom prísune kyselín",
            "C) Krv obsahuje viaceré pufre: bikarbonátový, fosfátový, proteínový, hemoglobínový",
            "D) Pufre sú prítomné len v obličkách"
        ],
        correctIndex: 2,
        explanation: "Krv má komplexný systém pufrov, ktorý tlmí akútne zmeny pH; dlhodobo sa zapájajú pľúca a obličky."
    ),
    // 28
    Question(
        text: "Ktoré tvrdenie o transcelulárnych tekutinách je správne?",
        options: [
            "A) Ide o časť intracelulárnej tekutiny",
            "B) Patria sem napr. likvor, synoviálna tekutina, tekutina v očnej komore",
            "C) Ide o hlavný objem telesnej vody",
            "D) Patria sem len sekréty potných žliaz"
        ],
        correctIndex: 1,
        explanation: "Transcelulárna tekutina je špeciálna podskupina ECT v uzavretých priestoroch (likvor, synoviálna tekutina atď.)."
    ),
    // 29
    Question(
        text: "Ak sa zvýši osmolarita plazmy (napr. po veľkom príjme solí bez vody):",
        options: [
            "A) Voda ide z ECT do buniek a bunky napučiavajú",
            "B) Voda ide z buniek do ECT a bunky sa zmenšujú",
            "C) Nedochádza k žiadnemu presunu vody",
            "D) Osmolarita nemá vplyv na bunky"
        ],
        correctIndex: 1,
        explanation: "Vyššia osmolarita ECT ťahá vodu von z buniek → skracovanie buniek, smäd, stimulácia ADH."
    ),
    // 30
    Question(
        text: "Hlavná úloha obličiek v súvislosti s telovými tekutinami je:",
        options: [
            "A) Regulovať len hladinu glukózy",
            "B) Regulovať objem, osmolaritu, elektrolyty a acidobázickú rovnováhu",
            "C) Tvorba žlče",
            "D) Tvorba mozgomiešneho moku"
        ],
        correctIndex: 1,
        explanation: "Obličky sú kľúčové pre homeostázu: upravujú objem vody, koncentráciu iónov, vylučujú kyseliny a zásady a tým držia vnútorné prostredie v rozumných medziach."
    )
]
// ---------- TRÁVIACA SÚSTAVA (30 otázok) ----------

let traviacaQuestions: [Question] = [
    // 1
    Question(
        text: "Hlavné miesto vstrebávania živín (sacharidov, tukov, bielkovín) u človeka je:",
        options: [
            "A) Žalúdok",
            "B) Tené črevo (najmä jejunum a ileum)",
            "C) Hrubé črevo",
            "D) Ústna dutina"
        ],
        correctIndex: 1,
        explanation: "Väčšina živín sa vstrebáva v tenkom čreve, najmä v jejune a ileu. Žalúdok skôr mieša a začína trávenie bielkovín, hrubé črevo rieši vodu a elektrolyty."
    ),
    // 2
    Question(
        text: "Ktorý enzým štiepi škrob už v ústach?",
        options: [
            "A) Pepsín",
            "B) Pankreatická amyláza",
            "C) Slinná amyláza (ptyalín)",
            "D) Laktáza"
        ],
        correctIndex: 2,
        explanation: "Slinná amyláza začína štiepiť polysacharidy už v ústach na menšie reťazce. V žalúdku sa jej aktivita znižuje kyslým pH."
    ),
    // 3
    Question(
        text: "Ktoré prostredie je fyziologicky v žalúdku?",
        options: [
            "A) Silne zásadité (pH 9–10)",
            "B) Neutrálne (pH 7)",
            "C) Kyslé (pH 1–3)",
            "D) Závisí len od potravy, fyziologicky nie je definované"
        ],
        correctIndex: 2,
        explanation: "Parietálne bunky produkujú HCl, čím vytvárajú silne kyslé prostredie potrebné na aktiváciu pepsínu a denaturáciu bielkovín."
    ),
    // 4
    Question(
        text: "Za aktiváciu pepsinogénu na pepsín zodpovedá hlavne:",
        options: [
            "A) Neutrálne pH žalúdka",
            "B) HCl (kyslé prostredie)",
            "C) Žlčové kyseliny",
            "D) Pankreatická lipáza"
        ],
        correctIndex: 1,
        explanation: "Pepsinogén je neaktívny proenzým, ktorý sa v kyslom prostredí mení na aktívny pepsín, štiepiaci bielkoviny."
    ),
    // 5
    Question(
        text: "Ktorý hormón zvyšuje sekréciu HCl v žalúdku?",
        options: [
            "A) Sekretín",
            "B) Cholecystokinín (CCK)",
            "C) Gastrín",
            "D) Inzulín"
        ],
        correctIndex: 2,
        explanation: "Gastrín sa tvorí v G-bunkách antra žalúdka a stimuluje parietálne bunky k sekrécii HCl."
    ),
    // 6
    Question(
        text: "Sekretín sa uvoľňuje pri príchode kyslého chýmu do duodena a:",
        options: [
            "A) Zvyšuje sekréciu HCl",
            "B) Stimuluje pankreas k sekrécii bikarbonátu",
            "C) Brzdí tvorbu žlče",
            "D) Aktivuje slinné žľazy"
        ],
        correctIndex: 1,
        explanation: "Sekretín chráni tenké črevo pred kyslým chýmom tým, že stimuluje pankreas k tvorbe HCO₃⁻ bohatého sekrétu, ktorý neutralizuje kyselinu."
    ),
    // 7
    Question(
        text: "Cholecystokinín (CCK) má hlavne tieto účinky:",
        options: [
            "A) Kontrakcia žlčníka a stimulácia sekrécie pankreatických enzýmov",
            "B) Zníženie motility tenkého čreva",
            "C) Inhibícia pankreasu",
            "D) Zníženie sekrécie žlče v pečeni"
        ],
        correctIndex: 0,
        explanation: "CCK sa uvoľňuje pri príchode tukov a aminokyselín do duodena, vedie ku kontrakcii žlčníka a zvýšenej sekrécii pankreatických enzýmov."
    ),
    // 8
    Question(
        text: "Hlavná funkcia žlče je:",
        options: [
            "A) Trávenie bielkovín",
            "B) Emulgácia tukov a uľahčenie ich vstrebávania",
            "C) Trávenie sacharidov",
            "D) Tvorba HCl"
        ],
        correctIndex: 1,
        explanation: "Žlčové kyseliny emulgujú tuky na menšie kvapôčky, zväčšujú povrch pre lipázy a tvoria micely s produktmi trávenia tukov."
    ),
    // 9
    Question(
        text: "Ktorý enzým je hlavný pre trávenie tukov?",
        options: [
            "A) Pepsín",
            "B) Pankreatická lipáza",
            "C) Amyláza",
            "D) Trypsín"
        ],
        correctIndex: 1,
        explanation: "Pankreatická lipáza štiepi triglyceridy na monoglyceridy a mastné kyseliny, ktoré sa vstrebávajú v prítomnosti žlčových kyselín."
    ),
    // 10
    Question(
        text: "Trypsín, chymotrypsín a elastáza sú enzýmy:",
        options: [
            "A) Slinných žliaz",
            "B) Žalúdka",
            "C) Pankreasu – štiepia bielkoviny",
            "D) Hrubého čreva"
        ],
        correctIndex: 2,
        explanation: "Ide o proteolytické enzýmy z exokrinného pankreasu, ktoré v tenkom čreve štiepia bielkoviny na menšie peptidy a aminokyseliny."
    ),
    // 11
    Question(
        text: "Lipidy z potravy sa po vstrebávaní do enterocytov:",
        options: [
            "A) Idú priamo portálnou krvou do pečene v podobe voľných mastných kyselín",
            "B) Balia do chylomikrónov a vstupujú do lymfy",
            "C) Vystupujú priamo do moču",
            "D) Nemusia sa vôbec balíť, idú voľne v krvi"
        ],
        correctIndex: 1,
        explanation: "V enterocytoch sa znovu tvoria triacylglyceroly, balia do chylomikrónov a lymfatickým systémom sa dostanú do krvi."
    ),
    // 12
    Question(
        text: "Ktoré tvrdenie o vstrebávaní sacharidov je správne?",
        options: [
            "A) Glukóza a galaktóza sa vstrebávajú sekundárne aktívnym transportom s Na⁺",
            "B) Vstrebávajú sa len pasívnou difúziou",
            "C) Vstrebávajú sa hlavne v hrubom čreve",
            "D) Vôbec sa nevstrebávajú, len fermentujú"
        ],
        correctIndex: 0,
        explanation: "Glukóza a galaktóza využívajú Na⁺-závislý kotransport (SGLT1), fruktóza ide facilitovanou difúziou (GLUT5)."
    ),
    // 13
    Question(
        text: "Hlavné motility tenkého čreva pri trávení sú:",
        options: [
            "A) Len peristaltika",
            "B) Segmentačné pohyby a peristaltika",
            "C) Len antiperistaltika",
            "D) Len tónické kontrakcie bez pohybu"
        ],
        correctIndex: 1,
        explanation: "Segmentácie miešajú obsah a zlepšujú kontakt so sliznicou, peristaltika posúva chým distálne."
    ),
    // 14
    Question(
        text: "Hlavnou úlohou hrubého čreva je:",
        options: [
            "A) Trávenie bielkovín",
            "B) Vstrebávanie väčšiny tukov",
            "C) Vstrebávanie vody a elektrolytov, fermentácia zvyškov črevnou mikrobiotou",
            "D) Tvorba HCl"
        ],
        correctIndex: 2,
        explanation: "Hrubé črevo koncentruje stoliciu, vstrebáva vodu, ióny a umožňuje bakteriálnu fermentáciu nestráviteľných zložiek."
    ),
    // 15
    Question(
        text: "Ktoré tvrdenie o pečeni je správne?",
        options: [
            "A) Produkuje žlč, detoxikuje látky a metabolizuje živiny",
            "B) Produkuje HCl",
            "C) Je hlavný orgán tvorby moču",
            "D) Nezúčastňuje sa metabolizmu sacharidov"
        ],
        correctIndex: 0,
        explanation: "Pečeň je metabolické centrum: žlč, glukoneogenéza, glykogenéza, metabolizmus liekov, detoxikácia, syntéza proteínov atď."
    ),
    // 16
    Question(
        text: "Portálny obeh (vena portae) vedie krv:",
        options: [
            "A) Z pečene do srdca",
            "B) Z čreva, sleziny a pankreasu do pečene",
            "C) Z obličiek do pečene",
            "D) Z pľúc do čreva"
        ],
        correctIndex: 1,
        explanation: "Vena portae privádza živinami bohatú krv z GIT a sleziny do pečene na spracovanie."
    ),
    // 17
    Question(
        text: "Ktoré tvrdenie o žalúdočnej sliznici je správne?",
        options: [
            "A) Nemá žiadnu ochranu proti HCl",
            "B) Hlien a bikarbonát chránia povrch epitelu pred kyselinou",
            "C) Epitely sú voľne plávajúce bunky",
            "D) Žalúdok nemá žiadne žľazy"
        ],
        correctIndex: 1,
        explanation: "Mucus + HCO₃⁻ vrstva vytvára ochrannú bariéru, jej narušenie (NSAIDs, H. pylori) → riziko vredov."
    ),
    // 18
    Question(
        text: "Ktorý vitamín vyžaduje intrinsic factor z parietálnych buniek na vstrebávanie?",
        options: [
            "A) Vitamín A",
            "B) Vitamín B₁",
            "C) Vitamín B₁₂",
            "D) Vitamín C"
        ],
        correctIndex: 2,
        explanation: "B₁₂ sa viaže na intrinsic factor v žalúdku a vstrebáva sa v terminálnom ileu. Pri atrofickej gastritíde → perniciózna anémia."
    ),
    // 19
    Question(
        text: "Najviac enzymatického trávenia prebieha v:",
        options: [
            "A) Ústnej dutine",
            "B) Žalúdku",
            "C) Duodene a proximálnom tenkom čreve",
            "D) Hrubom čreve"
        ],
        correctIndex: 2,
        explanation: "V duodene sa mieša chým so žlčou a pankreatickou šťavou a prebieha intenzívne štiepenie všetkých typov živín."
    ),
    // 20
    Question(
        text: "Peristaltiku čreva riadi predovšetkým:",
        options: [
            "A) Somatický nervový systém",
            "B) Enterický nervový systém a parasympatikus",
            "C) Len sympatikus",
            "D) Iba hormóny bez nervového vplyvu"
        ],
        correctIndex: 1,
        explanation: "Enterický systém (plexus myentericus, submucosus) + parasympatikus stimulujú motilitu, sympatikus ju skôr tlmí."
    ),
    // 21
    Question(
        text: "Ktorý hormón spomaľuje vyprázdňovanie žalúdka pri tučnej strave?",
        options: [
            "A) Gastrín",
            "B) CCK",
            "C) Sekretín",
            "D) Ghrelín"
        ],
        correctIndex: 1,
        explanation: "CCK nielen kontrahuje žlčník, ale aj spomaľuje žalúdočné vyprázdňovanie, aby mal tenké črevo čas spracovať tuky."
    ),
    // 22
    Question(
        text: "Vzduch prehltnutý pri jedení sa odborne nazýva:",
        options: [
            "A) Aerofágia",
            "B) Pneumothorax",
            "C) Meteorismus",
            "D) Aspirácia"
        ],
        correctIndex: 0,
        explanation: "Aerofágia = nadmerné prehĺtanie vzduchu, môže spôsobiť pocity plnosti, grganie."
    ),
    // 23
    Question(
        text: "Hlavná funkcia sleziny v súvislosti s GIT a krvou je:",
        options: [
            "A) Tvorba HCl",
            "B) Filtrácia krvi a rozpad starých erytrocytov",
            "C) Trávenie tukov",
            "D) Tvorba žlče"
        ],
        correctIndex: 1,
        explanation: "Slezina filtruje krv, odbúrava staré erytrocyty a je imunitný orgán (lymfatické folikuly)."
    ),
    // 24
    Question(
        text: "Ktoré tvrdenie o pankreatickej šťave je správne?",
        options: [
            "A) Je silne kyslá",
            "B) Obsahuje bikarbonát a enzýmy na trávenie všetkých živín",
            "C) Obsahuje len lipázu",
            "D) Pôsobí hlavne v hrubom čreve"
        ],
        correctIndex: 1,
        explanation: "Pankreatická šťava má HCO₃⁻ na neutralizáciu kyslého chýmu a enzýmy na tuky, bielkoviny aj sacharidy."
    ),
    // 25
    Question(
        text: "Črevná mikrobiota sa podieľa okrem iného na:",
        options: [
            "A) Tvorbe niektorých vitamínov (K, B)",
            "B) Tvorbe HCl",
            "C) Syntéze inzulínu",
            "D) Kontrakcii svalov"
        ],
        correctIndex: 0,
        explanation: "Baktérie v hrubom čreve môžu syntetizovať časť vitamínu K a niektoré vitamíny skupiny B, fermentujú nestráviteľné polysacharidy."
    ),
    // 26
    Question(
        text: "Žlčník fyziologicky:",
        options: [
            "A) Tvorí žlč",
            "B) Len skladuje a koncentruje žlč z pečene",
            "C) Neutralizuje HCl",
            "D) Produkuje inzulín"
        ],
        correctIndex: 1,
        explanation: "Žlč sa tvorí v hepatocytoch; žlčník ju zhromažďuje a koncentruje, pri CCK ju vypudzuje do duodena."
    ),
    // 27
    Question(
        text: "Ktoré tvrdenie o defekácii je správne?",
        options: [
            "A) Je čisto reflexná bez možnosti vôľového ovplyvnenia",
            "B) Zahŕňa reflexné kontrakcie hrubého čreva a vôľové uvoľnenie zvieračov",
            "C) Nemá reflexnú zložku",
            "D) Rektum je stále plne naplnené"
        ],
        correctIndex: 1,
        explanation: "Defekačný reflex vychádza z distenzie rekta, ale vonkajší análny zvierač je pod volnou kontrolou."
    ),
    // 28
    Question(
        text: "KTORÁ časť GIT má najkyselejšie pH?",
        options: [
            "A) Dutina ústna",
            "B) Žalúdok",
            "C) Duodenum",
            "D) Hrubé črevo"
        ],
        correctIndex: 1,
        explanation: "Žalúdok má pH okolo 1–3, tenké črevo je už neutralizované, hrubé črevo má skôr neutrálne až mierne kyslé prostredie z fermentácie."
    ),
    // 29
    Question(
        text: "Aké bunky v žalúdku produkujú HCl?",
        options: [
            "A) Hlavné (chief) bunky",
            "B) Parietálne (okrajové) bunky",
            "C) G-bunky",
            "D) Pohárikovité bunky"
        ],
        correctIndex: 1,
        explanation: "Parietálne bunky produkujú HCl a intrinsic factor; hlavné bunky produkujú pepsinogén."
    ),
    // 30
    Question(
        text: "Ktoré tvrdenie o tráviacej sústave je správne?",
        options: [
            "A) Slúži len na mechanické spracovanie potravy",
            "B) Zabezpečuje príjem, trávenie, vstrebávanie živín a vylučovanie nestrávených zvyškov",
            "C) Nemá žiadnu imunitnú funkciu",
            "D) Nie je prepojená s obehovým systémom"
        ],
        correctIndex: 1,
        explanation: "GIT je komplexný systém: mechanické a chemické spracovanie, vstrebávanie živín, vylučovanie odpadu, plus obrovská imunitná zóna (GALT)."
    )
]
// ---------- ZMYSLOVÉ ORGÁNY (30 otázok) ----------

let zmysloveOrganyQuestions: [Question] = [
    // 1
    Question(
        text: "Ktorá štruktúra oka láme svetlo najviac?",
        options: [
            "A) Rohovka",
            "B) Šošovka",
            "C) Sklovec",
            "D) Sietnica"
        ],
        correctIndex: 0,
        explanation: "Najväčší lom svetla zabezpečuje rozhranie vzduch–rohovka. Šošovka jemne doladí akomodáciu na rôzne vzdialenosti."
    ),
    // 2
    Question(
        text: "Ktorá štruktúra oka je zodpovedná za akomodáciu (zaostrenie na blízko/ďaleko)?",
        options: [
            "A) Rohovka",
            "B) Šošovka a ciliárny sval",
            "C) Zrakový nerv",
            "D) Dúhovka"
        ],
        correctIndex: 1,
        explanation: "Ciliárny sval mení napätie zonulárnych vlákien a tým zakrivenie šošovky – hrubšia pre blízko, ploššia pre diaľku."
    ),
    // 3
    Question(
        text: "Tyčinky v sietnici sú zodpovedné hlavne za:",
        options: [
            "A) Videnie za šera a periférne videnie",
            "B) Farebné videnie pri silnom svetle",
            "C) Rozpoznávanie detailov v makule",
            "D) Vnímanie hĺbky"
        ],
        correctIndex: 0,
        explanation: "Tyčinky sú veľmi citlivé na svetlo, ale nerozlišujú farby; sú najmä v periférii sietnice."
    ),
    // 4
    Question(
        text: "Čapíky v sietnici zabezpečujú:",
        options: [
            "A) Videnie za šera bez farieb",
            "B) Farebné a ostré videnie pri dennom svetle",
            "C) Vnímanie tlaku",
            "D) Bočné videnie"
        ],
        correctIndex: 1,
        explanation: "Čapíky sú koncentrované v makule a fovea centralis – ostrosť a vnímanie farieb."
    ),
    // 5
    Question(
        text: "Makula lutea (žltá škvrna) a fovea centralis sú dôležité pre:",
        options: [
            "A) Periférne videnie",
            "B) Najostrejšie videnie a detail",
            "C) Vnímanie len modrej farby",
            "D) Tvorbu sĺz"
        ],
        correctIndex: 1,
        explanation: "Fovea má najvyššiu hustotu čapíkov, tam je obraz najostrejší."
    ),
    // 6
    Question(
        text: "Zrakový nerv (n. opticus) vedie:",
        options: [
            "A) Motorické vlákna pre očné svaly",
            "B) Senzorické informácie zo sietnice do CNS",
            "C) Sympatické vlákna pre zrenicu",
            "D) Parasympatické vlákna pre slznú žľazu"
        ],
        correctIndex: 1,
        explanation: "N. opticus je čisto senzorický nerv, vedie informácie z fotoreceptorov cez gangliové bunky do mozgu."
    ),
    // 7
    Question(
        text: "Mióza je:",
        options: [
            "A) Rozšírenie zrenice",
            "B) Zúženie zrenice",
            "C) Strata zrakovej ostrosti",
            "D) Porucha akomodácie"
        ],
        correctIndex: 1,
        explanation: "Mióza = zúženie zrenice (parasympatikus), mydriáza = rozšírenie (sympatikus)."
    ),
    // 8
    Question(
        text: "Ktoré tvrdenie o krátkozrakosti (myopia) je správne?",
        options: [
            "A) Oko je príliš krátke, obraz sa tvorí za sietnicou",
            "B) Oko je príliš dlhé, obraz sa tvorí pred sietnicou",
            "C) Týka sa len farieb",
            "D) Vždy ide o poškodenie zrakového nervu"
        ],
        correctIndex: 1,
        explanation: "Pri myopii je oko relatívne dlhé alebo optická mohutnosť príliš veľká, obraz vzdialených predmetov sa tvorí pred sietnicou."
    ),
    // 9
    Question(
        text: "Sluchové kostičky (kľúčiky) sa nachádzajú:",
        options: [
            "A) Vnútorné ucho",
            "B) Stredné ucho",
            "C) Vonkajšie ucho",
            "D) Eustachova trubica"
        ],
        correctIndex: 1,
        explanation: "Kladivko, nákovka a strmienok sú v bubienkovej dutine (stredné ucho) a prenášajú kmity z bubienka na oválne okienko."
    ),
    // 10
    Question(
        text: "Organon Corti (Cortiho orgán) sa nachádza:",
        options: [
            "A) V sietnici",
            "B) V sacculus",
            "C) V slimáku (cochlea)",
            "D) V polkruhových kanálikoch"
        ],
        correctIndex: 2,
        explanation: "Cortiho orgán v slimáku obsahuje vláskové bunky, ktoré menia mechanické kmity na nervové vzruchy (sluch)."
    ),
    // 11
    Question(
        text: "Ktoré štruktúry sú dôležité pre vnímanie uhlového (rotačného) zrýchlenia?",
        options: [
            "A) Sacculus a utriculus",
            "B) Polkruhové kanáliky",
            "C) Cochlea",
            "D) Sluchové kostičky"
        ],
        correctIndex: 1,
        explanation: "Polkruhové kanáliky detegujú rotačné pohyby hlavy v troch rovinách; sacculus a utriculus lineárne zrýchlenie a polohu."
    ),
    // 12
    Question(
        text: "Sacculus a utriculus v labyrinte sú dôležité pre:",
        options: [
            "A) Sluch",
            "B) Vnímanie lineárneho zrýchlenia a polohy hlavy",
            "C) Vnímanie tlaku",
            "D) Videnie"
        ],
        correctIndex: 1,
        explanation: "Otolity na vláskových bunkách reagujú na gravitáciu a lineárne zrýchlenie – súčasť rovnovážneho aparátu."
    ),
    // 13
    Question(
        text: "Eustachova trubica (tuba auditiva) spája:",
        options: [
            "A) Vonkajší zvukovod s vnútorným uchom",
            "B) Stredné ucho s nosohltanom",
            "C) Vonkajšie a stredné ucho bez komunikácie s hltanom",
            "D) Vnútorné ucho s mozgom"
        ],
        correctIndex: 1,
        explanation: "Zabezpečuje vyrovnávanie tlaku medzi stredným uchom a atmosférou, preto človek pri lete lietadlom „prehĺta“."
    ),
    // 14
    Question(
        text: "Ktoré tvrdenie o chuťových vnemoch je správne?",
        options: [
            "A) Existujú len štyri chute",
            "B) Základné chute zahŕňajú sladké, slané, kyslé, horké a umami",
            "C) Všetky chute sa vnímajú len špičkou jazyka",
            "D) Chuťové poháriky sú len na tvrdom podnebí"
        ],
        correctIndex: 1,
        explanation: "Klasicky: sladké, slané, kyslé, horké, umami; chuťové poháriky sú na jazyku, mäkkom podnebí aj epiglottis."
    ),
    // 15
    Question(
        text: "Zmysel čuchu (olfakcia) je unikátny tým, že:",
        options: [
            "A) Signály idú najprv cez talamus ako všetky ostatné",
            "B) Čuchové informácie môžu ísť priamo do limbického systému bez talamu",
            "C) Nemá žiadnu súvislosť s emóciami",
            "D) Čuchové bunky nie sú neuróny"
        ],
        correctIndex: 1,
        explanation: "Čuch má priame projekcie do limbického systému, preto pachy tak silno evokujú spomienky a emócie."
    ),
    // 16
    Question(
        text: "Fotoreceptory v oku sú:",
        options: [
            "A) Vláskové bunky",
            "B) Tyčinky a čapíky",
            "C) Merkelove bunky",
            "D) Meissnerove telieska"
        ],
        correctIndex: 1,
        explanation: "Tyčinky a čapíky sú fotoreceptory sietnice, ostatné sú mechanoreceptory v koži alebo uchu."
    ),
    // 17
    Question(
        text: "Adaptácia na tmu (dark adaptation) súvisí hlavne s:",
        options: [
            "A) Rýchlou zmenou veľkosti zrenice",
            "B) Regeneráciou rodopsínu v tyčinkách",
            "C) Prácou len čapíkov",
            "D) Zmenou krivky hemoglobínu"
        ],
        correctIndex: 1,
        explanation: "Na tmu si oko adaptuje obnovou rodopsínu a zvýšením citlivosti tyčiniek, čo trvá niekoľko desiatok minút."
    ),
    // 18
    Question(
        text: "Ktorá štruktúra oka produkuje komorovú tekutinu?",
        options: [
            "A) Rohovka",
            "B) Ciliárne teliesko",
            "C) Sietnica",
            "D) Dúhovka"
        ],
        correctIndex: 1,
        explanation: "Ciliárne telo produkuje komorovú vodu, ktorá vyživuje rohovku a šošovku a odteká komorovým uhlom."
    ),
    // 19
    Question(
        text: "Zvýšený vnútroočný tlak pri poruche odtoku komorovej tekutiny vedie k:",
        options: [
            "A) Katarakte",
            "B) Glaukómu",
            "C) Astigmatizmu",
            "D) Myopii"
        ],
        correctIndex: 1,
        explanation: "Glaukóm = poškodenie zrakového nervu v dôsledku zvýšeného tlaku; môže viesť k postupnej strate zorného poľa."
    ),
    // 20
    Question(
        text: "Ktoré tvrdenie o sluchu je správne?",
        options: [
            "A) Výška tónu (frekvencia) sa kóduje v rôznych častiach slimáka",
            "B) Hlasitosť (intenzita) nezávisí od frekvencie výbojov nervu",
            "C) Všetky tóny dráždia len jeden typ vláskových buniek",
            "D) Sluchový nerv je motorický"
        ],
        correctIndex: 0,
        explanation: "Bazilárna membrána má rôzne mechanické vlastnosti: vysoké frekvencie sa kódujú bazálne, nízke apikálne."
    ),
    // 21
    Question(
        text: "Ktoré receptory zodpovedajú za vnímanie bolesti v koži?",
        options: [
            "A) Paciniho telieska",
            "B) Meissnerove telieska",
            "C) Voľné nervové zakončenia (nociceptory)",
            "D) Ruffiniho telieska"
        ],
        correctIndex: 2,
        explanation: "Nociceptory sú voľné zakončenia citlivé na mechanické, chemické a tepelné škodlivé podnety."
    ),
    // 22
    Question(
        text: "Proprioceptory informujú CNS o:",
        options: [
            "A) Teplote pokožky",
            "B) Polohe a napätí svalov, šliach a kĺbov",
            "C) Chuti jedla",
            "D) Hluku v prostredí"
        ],
        correctIndex: 1,
        explanation: "Proprioceptory (svalové vretienka, Golgiho telieska, receptory v kĺboch) informujú o polohe tela a pohyboch – kľúč pre koordináciu."
    ),
    // 23
    Question(
        text: "Vnímanie rovnováhy pri otáčaní hlavy do strán zabezpečuje hlavne:",
        options: [
            "A) Cochlea",
            "B) Polkruhové kanáliky",
            "C) Sacculus",
            "D) Utriculus"
        ],
        correctIndex: 1,
        explanation: "Polkruhové kanáliky v troch rovinách detegujú rotačné pohyby; sacculus/utriculus lineárne zrýchlenie."
    ),
    // 24
    Question(
        text: "Základnou jednotkou čuchu je:",
        options: [
            "A) Vlásková bunka v Cortiho orgáne",
            "B) Chemický receptor v čuchovom epiteli",
            "C) Mechanoreceptor v koži",
            "D) Fotoreceptor v sietnici"
        ],
        correctIndex: 1,
        explanation: "Čuchové receptory v nosovej sliznici sú chemické receptory (modifikované neuróny), ktoré sa viažu na odoranty."
    ),
    // 25
    Question(
        text: "Ktoré tvrdenie o slzných žľazách je správne?",
        options: [
            "A) Produkujú len vodu bez iných zložiek",
            "B) Slzy zvlhčujú a chránia povrch oka, obsahujú aj lyzozým",
            "C) Nemajú ochrannú funkciu",
            "D) Sú súčasťou stredného ucha"
        ],
        correctIndex: 1,
        explanation: "Slzy zvlhčujú rohovku, vyplavujú nečistoty a lyzozým má antibakteriálny účinok."
    ),
    // 26
    Question(
        text: "Astigmatizmus vzniká pri:",
        options: [
            "A) Príliš dlhom oku",
            "B) Príliš krátkom oku",
            "C) Nerovnomernom zakrivení rohovky alebo šošovky",
            "D) Opacite šošovky"
        ],
        correctIndex: 2,
        explanation: "Pri astigmatizme lom svetla nie je rovnaký v rôznych meridiánoch, obraz je deformovaný; rieši sa cylindrickými sklami."
    ),
    // 27
    Question(
        text: "Katarakta (šedý zákal) je:",
        options: [
            "A) Zápal rohovky",
            "B) Zakalenie šošovky",
            "C) Zvýšený vnútroočný tlak",
            "D) Odchlípenie sietnice"
        ],
        correctIndex: 1,
        explanation: "Pri katarakte sa šošovka postupne zakaluje, čo zhoršuje prienik svetla; riešenie je chirurgická výmena šošovky."
    ),
    // 28
    Question(
        text: "Ktoré tvrdenie o adaptácii receptorov je správne?",
        options: [
            "A) Všetky receptory adaptujú rovnako rýchlo",
            "B) Niektoré (čuch) adaptujú veľmi rýchlo, iné (bolesť) pomaly alebo vôbec",
            "C) Bolesť adaptuje veľmi rýchlo",
            "D) Adaptácia neexistuje"
        ],
        correctIndex: 1,
        explanation: "Čuch si „zvykne“ rýchlo, bolesť a niektoré proprioceptory adaptujú minimálne, čo má zjavný evolučný zmysel."
    ),
    // 29
    Question(
        text: "Ktoré tvrdenie o dráhe zrakového vnemu je správne?",
        options: [
            "A) Všetky vlákna sa krížia v chiasma opticum",
            "B) V chiasme sa krížia len vlákna z nazálnych polovíc sietnice",
            "C) Vlákna sa nekrížia vôbec",
            "D) Krížia sa len vlákna z temporálnych polovíc"
        ],
        correctIndex: 1,
        explanation: "Nazálne vlákna prechádzajú krížením, temporálne idú ipsilaterálne – preto každá hemisféra spracúva kontralaterálne zorné pole."
    ),
    // 30
    Question(
        text: "Ktoré tvrdenie o zmyslových orgánoch je správne?",
        options: [
            "A) Každý zmysel je izolovaný bez prepojenia v CNS",
            "B) Informácie zo zmyslov sa integrujú v mozgu a ovplyvňujú správanie, emócie aj autonómne funkcie",
            "C) Zmyslové orgány nemajú vplyv na rovnováhu",
            "D) Sluch nemá žiadnu väzbu na reč"
        ],
        correctIndex: 1,
        explanation: "Zmysly sú prepojené s kôrou, limbickým systémom aj kmeňom; ovplyvňujú motoriku, emócie, vegetatívne reakcie aj kogníciu."
    )
]
// ---------- HORMONÁLNA (ENDOKRINNÁ) SÚSTAVA (30 otázok) ----------

let hormonalnaQuestions: [Question] = [
    // 1
    Question(
        text: "Ktorá žľaza je označovaná ako „hlavná riadiaca“ endokrinná žľaza organizmu?",
        options: [
            "A) Štítna žľaza",
            "B) Nadobličky",
            "C) Hypofýza",
            "D) Epifýza"
        ],
        correctIndex: 2,
        explanation: "Hypofýza (podmozgová žľaza) produkuje tropné hormóny riadiace činnosť iných endokrinných žliaz (štítna, nadobličky, gonády atď.)."
    ),
    // 2
    Question(
        text: "Ktorý hormón je priamo produkovaný hypotalamom a uvoľňovaný z neurohypofýzy?",
        options: [
            "A) Prolaktín",
            "B) Oxytocín",
            "C) TSH",
            "D) ACTH"
        ],
        correctIndex: 1,
        explanation: "Oxytocín a ADH (vazopresín) sa syntetizujú v hypotalame a sú transportované do zadného laloka hypofýzy (neurohypofýza), odkiaľ sa uvoľňujú."
    ),
    // 3
    Question(
        text: "Vazopresín (ADH) hlavne:",
        options: [
            "A) Zvyšuje diurézu",
            "B) Znižuje spätné vstrebávanie vody v obličkách",
            "C) Zvyšuje spätné vstrebávanie vody v obličkách",
            "D) Stimuluje uvoľnenie inzulínu"
        ],
        correctIndex: 2,
        explanation: "ADH zvyšuje priepustnosť zberných kanálikov pre vodu, čím znižuje diurézu a zvyšuje koncentráciu moču."
    ),
    // 4
    Question(
        text: "Ktorý hormón stimuluje kôru nadobličiek k tvorbe kortizolu?",
        options: [
            "A) TSH",
            "B) ACTH",
            "C) FSH",
            "D) GH"
        ],
        correctIndex: 1,
        explanation: "ACTH (adrenokortikotropný hormón) z adenohypofýzy stimuluje zónu fasciculata kôry nadobličiek k produkcii glukokortikoidov (hlavne kortizolu)."
    ),
    // 5
    Question(
        text: "Kortizol patrí medzi:",
        options: [
            "A) Mineralokortikoidy",
            "B) Glukokortikoidy",
            "C) Androgény nadobličiek",
            "D) Katecholamíny"
        ],
        correctIndex: 1,
        explanation: "Kortizol je hlavný glukokortikoid – ovplyvňuje metabolizmus glukózy, stresovú odpoveď, imunitu."
    ),
    // 6
    Question(
        text: "Aldosterón je hormón, ktorý:",
        options: [
            "A) Zvyšuje vylučovanie sodíka močom",
            "B) Zvyšuje spätnú resorpciu sodíka a vody a vylučovanie draslíka",
            "C) Nemá vplyv na obličky",
            "D) Znižuje krvný tlak"
        ],
        correctIndex: 1,
        explanation: "Aldosterón zvyšuje reabsorpciu Na⁺ (a teda aj vody) v distálnom nefróne a zvyšuje vylučovanie K⁺, čím prispieva k regulácii tlaku."
    ),
    // 7
    Question(
        text: "Ktoré hormóny produkuje dreň nadobličiek?",
        options: [
            "A) Kortizol a aldosterón",
            "B) Adrenalín a noradrenalín",
            "C) Inzulín a glukagón",
            "D) T₃ a T₄"
        ],
        correctIndex: 1,
        explanation: "Dreň nadobličiek je modifikované sympatikové ganglion a produkuje katecholamíny – adrenalín a noradrenalín."
    ),
    // 8
    Question(
        text: "Ktorý hormón zvyšuje hladinu glukózy v krvi?",
        options: [
            "A) Inzulín",
            "B) Glukagón",
            "C) Somatostatín",
            "D) Prolaktín"
        ],
        correctIndex: 1,
        explanation: "Glukagón (α-bunky pankreasu) podporuje glykogenolýzu a glukoneogenézu v pečeni → zvýšenie glykémie."
    ),
    // 9
    Question(
        text: "Inzulín pôsobí hlavne tak, že:",
        options: [
            "A) Zvyšuje glykémiu",
            "B) Znižuje glykémiu podporou vstupu glukózy do buniek",
            "C) Zvyšuje lipolýzu",
            "D) Nemá vplyv na tukový metabolizmus"
        ],
        correctIndex: 1,
        explanation: "Inzulín podporuje vstup glukózy do buniek (GLUT4 v svaloch a tukovom tkanive), glykogenézu, lipogenézu a proteosyntézu."
    ),
    // 10
    Question(
        text: "Ktoré hormóny produkuje štítna žľaza?",
        options: [
            "A) TSH a TRH",
            "B) T₃ (trijódtyronín), T₄ (tyroxín) a kalcitonín",
            "C) Parathormón",
            "D) Inzulín a glukagón"
        ],
        correctIndex: 1,
        explanation: "Štítna žľaza produkuje jódované hormóny T₃, T₄ (zvýšenie metabolizmu) a C-bunky produkujú kalcitonín (znižuje Ca²⁺ v krvi)."
    ),
    // 11
    Question(
        text: "Parathormón (PTH) z prištítnych teliesok:",
        options: [
            "A) Znižuje hladinu Ca²⁺ v krvi",
            "B) Zvyšuje hladinu Ca²⁺ a znižuje hladinu fosfátu",
            "C) Nemá vplyv na kosti ani obličky",
            "D) Pôsobí len v štítnej žľaze"
        ],
        correctIndex: 1,
        explanation: "PTH zvyšuje resorpciu Ca²⁺ v kostiach a obličkách a podporuje tvorbu aktívneho vitamínu D → vyššie Ca²⁺ v plazme."
    ),
    // 12
    Question(
        text: "Kalcitonín pôsobí tak, že:",
        options: [
            "A) Zvyšuje hladinu Ca²⁺ v krvi",
            "B) Znižuje hladinu Ca²⁺ v krvi inhibíciou osteoklastov",
            "C) Nemá vzťah ku kostiam",
            "D) Zvyšuje vstrebávanie Ca²⁺ v čreve"
        ],
        correctIndex: 1,
        explanation: "Kalcitonín z C-buniek štítnej žľazy brzdi resorpciu kosti osteoklastmi a tak znižuje Ca²⁺ v sére (hlavne u detí)."
    ),
    // 13
    Question(
        text: "Hormóny steroidnej povahy sú typicky:",
        options: [
            "A) Rozpustné vo vode, viažu sa na membránové receptory",
            "B) Lipofilné, prenikajú cez membránu a viažu sa na intracelulárne receptory",
            "C) Bez receptorov",
            "D) Vždy uvoľňované z hypotalamu"
        ],
        correctIndex: 1,
        explanation: "Steroidy (kortizol, aldosterón, pohlavné hormóny) sú lipofilné, viažu sa na nukleárne receptory a menia expresiu génov."
    ),
    // 14
    Question(
        text: "Peptidové hormóny (napr. inzulín, ACTH):",
        options: [
            "A) Prenikajú pasívne cez membránu",
            "B) Viažu sa na membránové receptory a aktivujú sekundárne posly",
            "C) Nepotrebujú receptory",
            "D) Sú uložené iba intracelulárne bez sekrécie"
        ],
        correctIndex: 1,
        explanation: "Peptidové hormóny sú hydrofilné, väčšinou pôsobia cez receptory na membráne a sekundárne posly (cAMP, IP₃, Ca²⁺ atď.)."
    ),
    // 15
    Question(
        text: "Negatívna spätná väzba v endokrinnom systéme znamená, že:",
        options: [
            "A) Vyššia hladina hormónu zvyšuje jeho ďalšiu sekréciu",
            "B) Vyššia hladina hormónu tlmí jeho ďalšiu sekréciu",
            "C) Hormóny sa regulujú len pozitívnou spätnou väzbou",
            "D) Regulácia hormónov neexistuje"
        ],
        correctIndex: 1,
        explanation: "Typický príklad: T₃/T₄ inhibujú TRH a TSH; kortizol inhibuje CRH a ACTH."
    ),
    // 16
    Question(
        text: "Pozitívna spätná väzba v endokrinnom systéme sa vyskytuje napríklad pri:",
        options: [
            "A) Bazálnej sekrécii kortizolu",
            "B) LH surge pri ovulácii",
            "C) Tvorbe inzulínu",
            "D) Uvoľňovaní aldosterónu"
        ],
        correctIndex: 1,
        explanation: "Vysoké hladiny estrogénov pred ovuláciou na chvíľu „prepnú“ mechanizmus na pozitívnu spätnú väzbu → prudký nárast LH."
    ),
    // 17
    Question(
        text: "Somatotropín (GH) hlavne:",
        options: [
            "A) Znižuje rast kostí",
            "B) Stimuluje rast a proteosyntézu, zvyšuje lipolýzu",
            "C) Má len účinok na štítnu žľazu",
            "D) Pôsobí len pred narodením"
        ],
        correctIndex: 1,
        explanation: "GH stimulovaný GHRH z hypotalamu podporuje rast, tvorbu IGF-1, proteosyntézu a mobilizáciu tukov."
    ),
    // 18
    Question(
        text: "Prolaktín:",
        options: [
            "A) Stimuluje tvorbu mlieka v prsnej žľaze",
            "B) Je len mužský hormón",
            "C) Nemá vzťah k laktácii",
            "D) Stimuluje ovuláciu"
        ],
        correctIndex: 0,
        explanation: "Prolaktín z adenohypofýzy podporuje laktáciu; jeho nadbytok môže tlmiť gonadotropíny a spôsobiť amenoreu."
    ),
    // 19
    Question(
        text: "Oxytocín:",
        options: [
            "A) Znižuje kontrakciu maternice",
            "B) Podporuje kontrakcie maternice pri pôrode a ejekciu mlieka",
            "C) Pôsobí len na obličky",
            "D) Je katabolický hormón"
        ],
        correctIndex: 1,
        explanation: "Oxytocín zvyšuje kontrakcie myometria a kontrakciu myoepitelových buniek v prsníku (vytekanie mlieka)."
    ),
    // 20
    Question(
        text: "Ktorý hormón riadi cirkadiánne rytmy a produkuje ho epifýza?",
        options: [
            "A) Melatonín",
            "B) Serotonín",
            "C) Dopamín",
            "D) Kortizol"
        ],
        correctIndex: 0,
        explanation: "Epifýza produkuje melatonín, ktorý sa uvoľňuje hlavne v noci a pomáha synchronizovať biologické hodiny."
    ),
    // 21
    Question(
        text: "Hormóny kôry nadobličiek sa delia na:",
        options: [
            "A) Glukokortikoidy, mineralokortikoidy a androgény",
            "B) Adrenalín, noradrenalín, dopamín",
            "C) T₃, T₄, kalcitonín",
            "D) Inzulín, glukagón, somatostatín"
        ],
        correctIndex: 0,
        explanation: "Zóna glomerulosa: mineralokortikoidy; fasciculata: glukokortikoidy; reticularis: androgény."
    ),
    // 22
    Question(
        text: "Inzulín a glukagón sú hormóny, ktoré sa produkujú v:",
        options: [
            "A) Hypofýze",
            "B) Štítnej žľaze",
            "C) Langerhansových ostrovčekoch pankreasu",
            "D) Kôre nadobličiek"
        ],
        correctIndex: 2,
        explanation: "β-bunky produkujú inzulín, α-bunky glukagón, δ-bunky somatostatín."
    ),
    // 23
    Question(
        text: "Erytropoetín (EPO) je hormón, ktorý:",
        options: [
            "A) Produkuje výhradne pečeň",
            "B) Stimuluje tvorbu erytrocytov v kostnej dreni",
            "C) Znižuje počet erytrocytov",
            "D) Nemá vzťah ku krvi"
        ],
        correctIndex: 1,
        explanation: "EPO produkujú hlavne obličky pri hypoxii a stimuluje erytropoézu v kostnej dreni."
    ),
    // 24
    Question(
        text: "Leptín je hormón produkovaný najmä:",
        options: [
            "A) Pankreasom",
            "B) Tukovým tkanivom",
            "C) Hypofýzou",
            "D) Štítnou žľazou"
        ],
        correctIndex: 1,
        explanation: "Leptín z adipocytov informuje hypotalamus o energetických zásobách a tlmí príjem potravy."
    ),
    // 25
    Question(
        text: "Ktorý hormón z nasledujúcich má prevažne anabolické účinky?",
        options: [
            "A) Kortizol (pri fyziologických stresových dávkach)",
            "B) Inzulín",
            "C) Glukagón",
            "D) Adrenalín"
        ],
        correctIndex: 1,
        explanation: "Inzulín podporuje ukladanie glukózy, tukov a proteínov → typicky anabolický hormón."
    ),
    // 26
    Question(
        text: "Hormonálna regulácia je typicky:",
        options: [
            "A) Veľmi rýchla (milisekundy), krátko trvajúca",
            "B) Pomalšia, ale dlhšie trvajúca ako nervové signály",
            "C) Bez časového oneskorenia",
            "D) Len lokálna bez systémových efektov"
        ],
        correctIndex: 1,
        explanation: "Hormóny často pôsobia minúty až hodiny a majú systémový účinok, zatiaľ čo nervové signály sú rýchle a presne lokalizované."
    ),
    // 27
    Question(
        text: "Ktorá kombinácia je správne priradená?",
        options: [
            "A) TSH – nadobličky",
            "B) ACTH – štítna žľaza",
            "C) FSH/LH – gonády",
            "D) Prolaktín – kôra nadobličiek"
        ],
        correctIndex: 2,
        explanation: "FSH a LH pôsobia na vaječníky a semenníky; TSH na štítnu žľazu; ACTH na kôru nadobličiek."
    ),
    // 28
    Question(
        text: "Ktoré tvrdenie o hypotalame je správne?",
        options: [
            "A) Nemá vzťah k endokrinnému systému",
            "B) Produkuje uvoľňovacie a inhibičné hormóny pre adenohypofýzu",
            "C) Je iba motoneurónové centrum",
            "D) Netvorí žiadne hormóny"
        ],
        correctIndex: 1,
        explanation: "Hypotalamus je hlavný integračný článok neurálnej a hormonálnej regulácie – CRH, TRH, GHRH, GnRH, somatostatín..."
    ),
    // 29
    Question(
        text: "Hormóny štítnej žľazy (T₃/T₄) primárne:",
        options: [
            "A) Znižujú bazálny metabolizmus",
            "B) Zvyšujú bazálny metabolizmus a spotrebu O₂",
            "C) Nemajú vplyv na metabolizmus",
            "D) Znižujú telesnú teplotu"
        ],
        correctIndex: 1,
        explanation: "Tyroidálne hormóny zvyšujú metabolizmus, produkciu tepla, ovplyvňujú rast a vývoj CNS."
    ),
    // 30
    Question(
        text: "Ktoré tvrdenie o hormónoch je správne?",
        options: [
            "A) Každý hormón má len jeden účinok na jeden orgán",
            "B) Ten istý hormón môže pôsobiť na viac tkanív s rôznymi efektmi",
            "C) Hormóny sú vždy uložené v žľaze a nikdy sa neuvoľňujú",
            "D) Hormóny nemajú receptory"
        ],
        correctIndex: 1,
        explanation: "Hormóny sú pleiotropné – napr. kortizol pôsobí na imunitu, metabolizmus, CNS, kardiovaskulárny systém atď."
    )
]
// ---------- NERVOVÁ SÚSTAVA (30 otázok) ----------

let nervovaQuestions: [Question] = [
    // 1
    Question(
        text: "Základnou funkčnou jednotkou nervovej sústavy je:",
        options: [
            "A) Gliová bunka",
            "B) Neurón",
            "C) Synapsa",
            "D) Axón"
        ],
        correctIndex: 1,
        explanation: "Neurón je excitačná bunka, ktorá prijíma, spracováva a vedie informácie; glie sú podporné bunky."
    ),
    // 2
    Question(
        text: "Myelín v centrálnom nervovom systéme tvoria:",
        options: [
            "A) Schwannove bunky",
            "B) Oligodendrocyty",
            "C) Astrocyty",
            "D) Mikroglia"
        ],
        correctIndex: 1,
        explanation: "V CNS myelinizujú axóny oligodendrocyty, v periférnom NS Schwannove bunky."
    ),
    // 3
    Question(
        text: "Skokovité (saltatórne) vedenie vzruchu sa odohráva:",
        options: [
            "A) Po nemyelinizovaných vláknach",
            "B) Po myelinizovaných vláknach medzi Ranvierovými zárezmi",
            "C) Len v sivej hmote",
            "D) Len v autonómnom NS"
        ],
        correctIndex: 1,
        explanation: "Myelín izoluje axón, depolarizácia preskakuje z jedného Ranvierovho zárezu na druhý → rýchle vedenie."
    ),
    // 4
    Question(
        text: "Hlavným excitačným mediátorom v CNS je:",
        options: [
            "A) GABA",
            "B) Glycín",
            "C) Glutamát",
            "D) Dopamín"
        ],
        correctIndex: 2,
        explanation: "Glutamát je hlavný excitačný neurotransmiter v CNS, GABA a glycín sú inhibičné."
    ),
    // 5
    Question(
        text: "Hlavným inhibičným mediátorom v CNS je:",
        options: [
            "A) Glutamát",
            "B) GABA",
            "C) Noradrenalín",
            "D) Serotonín"
        ],
        correctIndex: 1,
        explanation: "GABA (a v mieche aj glycín) sprostredkujú väčšinu inhibičných synapsií v CNS."
    ),
    // 6
    Question(
        text: "Akčný potenciál vzniká, keď:",
        options: [
            "A) Membrána je trvalo hyperpolarizovaná",
            "B) Depolarizácia dosiahne prah a otvorí sa napäťovo riadený Na⁺ kanál",
            "C) Otvoria sa len K⁺ kanály",
            "D) Membránový potenciál je 0 mV a nemenný"
        ],
        correctIndex: 1,
        explanation: "Po dosiahnutí prahu sa otvorí veľké množstvo Na⁺ kanálov → prudká depolarizácia (vzostupná fáza AP)."
    ),
    // 7
    Question(
        text: "Refraktérna fáza akčného potenciálu znamená:",
        options: [
            "A) Neurón môže byť kedykoľvek znovu aktivovaný",
            "B) Istú dobu po AP nie je možné alebo je ťažšie generovať nový AP",
            "C) Trvalú neschopnosť generovať AP",
            "D) Fázu úplnej hyperexcitácie"
        ],
        correctIndex: 1,
        explanation: "Absolútna refraktérna fáza = nemožnosť nového AP; relatívna = možný len pri silnejšom podnete."
    ),
    // 8
    Question(
        text: "Synapsa je:",
        options: [
            "A) Spojenie dvoch kostí",
            "B) Miesto prenosu signálu medzi neurónom a inou bunkou",
            "C) Druh gliovej bunky",
            "D) Zhluk dendritov"
        ],
        correctIndex: 1,
        explanation: "Chemická synapsa prenáša signál pomocou neurotransmiterov cez synaptickú štrbinu."
    ),
    // 9
    Question(
        text: "Ktorá časť nervovej sústavy je zodpovedná za vôľou riadené pohyby?",
        options: [
            "A) Autonómny nervový systém",
            "B) Somatický nervový systém",
            "C) Enterický nervový systém",
            "D) Sympatikus"
        ],
        correctIndex: 1,
        explanation: "Somatický NS inervuje kostrové svaly a sprostredkuje vedomé ovládané pohyby."
    ),
    // 10
    Question(
        text: "Sympatikus typicky spôsobí:",
        options: [
            "A) Zúženie zreníc, spomalenie srdca, zvýšenú peristaltiku",
            "B) Zvýšenie srdcovej frekvencie, rozšírenie zreníc, zníženie motility GIT",
            "C) Zníženie krvného tlaku pri strese",
            "D) Zvýšenú sekréciu slín a žalúdočných štiav v pokoji"
        ],
        correctIndex: 1,
        explanation: "Sympatikus = „fight or flight“: tachykardia, mydriáza, bronchodilatácia, inhibícia GIT motility."
    ),
    // 11
    Question(
        text: "Parasympatikus typicky:",
        options: [
            "A) Zvyšuje frekvenciu srdca",
            "B) Znižuje srdcovú frekvenciu, podporuje trávenie a sekrečnú činnosť GIT",
            "C) Zúžuje bronchy a zvyšuje tlak",
            "D) Nemá vplyv na GIT"
        ],
        correctIndex: 1,
        explanation: "Parasympatikus = „rest and digest“: bradykardia, zvýšená motilita a sekrécia GIT, mióza."
    ),
    // 12
    Question(
        text: "Reflexný oblúk obsahuje minimálne:",
        options: [
            "A) Receptor, aferentné vlákno, centrum, eferentné vlákno a efektor",
            "B) Len receptor a efektor",
            "C) Len dve neurónové synapsie",
            "D) Len centrum v kôre"
        ],
        correctIndex: 0,
        explanation: "Základný reflexný oblúk: receptor → senzorické (aferentné) vlákno → centrum → motorické (eferentné) vlákno → efektor."
    ),
    // 13
    Question(
        text: "Šedá hmota CNS obsahuje hlavne:",
        options: [
            "A) Myelinizované axóny",
            "B) Telá neurónov a synapsie",
            "C) Len gliu",
            "D) Len cievy"
        ],
        correctIndex: 1,
        explanation: "Šedá hmota = telá neurónov, dendrity, synapsie; biela hmota = myelinizované axóny."
    ),
    // 14
    Question(
        text: "Ktorá časť mozgu je zodpovedná hlavne za koordináciu pohybov a rovnováhu?",
        options: [
            "A) Mozgová kôra čelného laloka",
            "B) Mozoček (cerebellum)",
            "C) Talamus",
            "D) Predĺžená miecha"
        ],
        correctIndex: 1,
        explanation: "Mozoček koordinuje jemné pohyby, rovnováhu, posturálny tonus a motorické učenie."
    ),
    // 15
    Question(
        text: "Predĺžená miecha (medulla oblongata) obsahuje:",
        options: [
            "A) Centrum dýchania a kardiovaskulárne centrum",
            "B) Zrakové centrum",
            "C) Centrum sluchu",
            "D) Centrum reči (Broca)"
        ],
        correctIndex: 0,
        explanation: "V kmeni sú základné vitálne centrá – respiračné, kardiovaskulárne, niektoré reflexy (kýchanie, kašeľ, prehĺtanie)."
    ),
    // 16
    Question(
        text: "Brocovo centrum (motorické centrum reči) sa nachádza v:",
        options: [
            "A) Týlnom laloku",
            "B) Čelnom laloku dominantnej hemisféry",
            "C) Spánkovom laloku",
            "D) Temennom laloku"
        ],
        correctIndex: 1,
        explanation: "Brocova area v ľavej čelnej kôre riadi motorickú produkciu reči (artikuláciu)."
    ),
    // 17
    Question(
        text: "Wernickeho centrum je zodpovedné hlavne za:",
        options: [
            "A) Motoriku ruky",
            "B) Zmysluplné porozumenie reči",
            "C) Koordináciu pohybov",
            "D) Videnie"
        ],
        correctIndex: 1,
        explanation: "Wernickeho area (väčšinou v ľavom spánkovom laloku) spracúva význam slov – porozumenie reči."
    ),
    // 18
    Question(
        text: "Mozgovomiešny mok (likvor) sa tvorí hlavne v:",
        options: [
            "A) Pavučnici (arachnoidea)",
            "B) Chorioidálnych plexoch komôr",
            "C) Meningách miechy",
            "D) Bielej hmote mozgu"
        ],
        correctIndex: 1,
        explanation: "Chorioidálne plexy komôr produkujú likvor, ktorý cirkuluje komorami, subarachnoidálnym priestorom a vstrebáva sa do venóznych splavov."
    ),
    // 19
    Question(
        text: "Ktoré tvrdenie o krvno-mozgovej bariére je správne?",
        options: [
            "A) Tvoria ju len meningy",
            "B) Tvorí ju endotel kapilár s tesnými spojmi, bazálna membrána a výbežky astrocytov",
            "C) Neexistuje",
            "D) Je tvorená kostnou lebkou"
        ],
        correctIndex: 1,
        explanation: "BBB chráni CNS pred toxínmi a výkyvmi v zložení krvi; niektoré oblasti (area postrema) sú však priepustnejšie."
    ),
    // 20
    Question(
        text: "Somatosenzorická kôra (vnímanie dotyku, bolesti, teploty) leží hlavne v:",
        options: [
            "A) Predcentrálnom závite",
            "B) Postcentrálnom závite temenného laloka",
            "C) Týlnom laloku",
            "D) Mozočku"
        ],
        correctIndex: 1,
        explanation: "Primárna somatosenzorická kôra je v gyrus postcentralis parietálneho laloka."
    ),
    // 21
    Question(
        text: "Pyramídová dráha (kortikospinálna):",
        options: [
            "A) Vedie senzorické informácie do mozgu",
            "B) Je hlavná zostupná motorická dráha pre vôľové pohyby",
            "C) Má význam len pre vegetatívne funkcie",
            "D) Vedie v mozgovom kmeni, ale nie v mieche"
        ],
        correctIndex: 1,
        explanation: "Pyramídová dráha spája motorickú kôru s motoneurónmi miechy a riadi presné vôľové pohyby."
    ),
    // 22
    Question(
        text: "Bazálne gangliá sa podieľajú hlavne na:",
        options: [
            "A) Regulácii autonómnych funkcií",
            "B) Kontrole a plánovaní pohybu, automatizovaných pohybových vzorov",
            "C) Tvorbe hormónov",
            "D) Tvorbe likvoru"
        ],
        correctIndex: 1,
        explanation: "Poruchy bazálnych ganglií vedú k hypokinetickým (Parkinson) alebo hyperkinetickým poruchám (chorea)."
    ),
    // 23
    Question(
        text: "Enterický nervový systém:",
        options: [
            "A) Nemá neuróny",
            "B) Je súčasťou GIT, má vlastné plexy a môže fungovať relatívne autonómne",
            "C) Je len súčasť miechy",
            "D) Riadi len slinné žľazy"
        ],
        correctIndex: 1,
        explanation: "ENS (Auerbachov a Meissnerov plexus) riadi motilitu a sekréciu GIT s podporou sympatika a parasympatika."
    ),
    // 24
    Question(
        text: "Dermatom je:",
        options: [
            "A) Oblasť kože inervovaná jedným miechovým nervom",
            "B) Sval inervovaný jedným nervom",
            "C) Kožný receptor bolesti",
            "D) Časť šedej hmoty miechy"
        ],
        correctIndex: 0,
        explanation: "Mapy dermatomov sú klinicky dôležité pri koreňových syndrómoch a poraneniach miechy."
    ),
    // 25
    Question(
        text: "Monosynaptický reflex (napr. patelárny) obsahuje:",
        options: [
            "A) Len motoneurón",
            "B) Jeden senzorický a jeden motoneurón s jednou synapsiou",
            "C) Mnoho interneurónov",
            "D) Len mozgové centrá"
        ],
        correctIndex: 1,
        explanation: "Natiahový reflex: svalové vretienko → senzorický neurón → priamo motoneurón toho istého svalu."
    ),
    // 26
    Question(
        text: "Sympatické pregangliové neuróny vychádzajú z miechy v úseku:",
        options: [
            "A) C1–C4",
            "B) T1–L2",
            "C) L3–S5",
            "D) S2–S4"
        ],
        correctIndex: 1,
        explanation: "Sympatikus je torakolumbálny systém (T1–L2). Parasympatikus je kraniosakrálny (mozgové kmenné jadrá + S2–S4)."
    ),
    // 27
    Question(
        text: "Parasympatické pregangliové vlákna vychádzajú okrem sakrálnych segmentov aj z:",
        options: [
            "A) Mozgového kmeňa (III, VII, IX, X)",
            "B) T1–T4",
            "C) Len z miechy L4–L5",
            "D) Z mozočka"
        ],
        correctIndex: 0,
        explanation: "Parasympatikus: hlavové nervy III, VII, IX, X + sakrálna miecha S2–S4."
    ),
    // 28
    Question(
        text: "Ktoré tvrdenie o plasticite nervového systému je správne?",
        options: [
            "A) Nervový systém je po narodení už úplne nemenný",
            "B) Synaptické spojenia a ich sila sa môžu meniť učením a skúsenosťou",
            "C) Neuróny nikdy netvoria nové synapsie",
            "D) CNS sa nedokáže prispôsobiť poškodeniu"
        ],
        correctIndex: 1,
        explanation: "Synaptická plasticita (LTP, LTD) je základom učenia a pamäte; CNS má určitú schopnosť reorganizácie."
    ),
    // 29
    Question(
        text: "Ktoré tvrdenie o bolesti je správne?",
        options: [
            "A) Je to čisto periférny jav",
            "B) Vnímanie bolesti vzniká v mozgu po spracovaní nociceptívnych signálov",
            "C) Nociceptory sú len v koži",
            "D) Bolesť nemôže byť ovplyvnená emóciami"
        ],
        correctIndex: 1,
        explanation: "Bolesť je subjektívny vnem – nociceptívne signály sa integrujú v mieche, kmeni, talame a kôre, s vplyvom limbického systému."
    ),
    // 30
    Question(
        text: "Ktoré tvrdenie o nervovej sústave je správne?",
        options: [
            "A) Slúži len na reflexy bez vedomej činnosti",
            "B) Koordinuje zmysly, motoriku, vnútorné orgány, emócie aj kogníciu",
            "C) Nemá prepojenie s endokrinným systémom",
            "D) Je úplne nezávislá od krvného zásobenia"
        ],
        correctIndex: 1,
        explanation: "Nervová sústava je centrálna riadiaca sieť – integruje vnemy, riadi odpovede, spolupracuje s hormónmi a je extrémne závislá na prívode O₂ a glukózy."
    )
]

// POTOM definuj zoznam modulov:
let modules: [Module] = [
    Module(name: "Vitamíny",              color: .yellow,       questions: vitaminyQuestions),
    Module(name: "Imunita",               color: .green,        questions: imunitaQuestions),
    Module(name: "Srdcovo-cievna",        color: .red,          questions: srdcovoCievneQuestions),
    Module(name: "Dýchacia sústava",      color: .teal,         questions: dychaciaQuestions),
    Module(name: "Koža",                  color: .orange,       questions: kozaQuestions),
    Module(name: "Rozmnožovacia",         color: .pink,         questions: rozmnozovaciaQuestions),
    Module(name: "Oporna sústava",        color: .brown,        questions: opornaSustavaQuestions),
    Module(name: "Pohybová sústava",      color: .purple,       questions: pohybovaQuestions),
    Module(name: "Telové tekutiny",       color: .blue,         questions: teloveTekutinyQuestions),
    Module(name: "Tráviaca sústava",      color: .indigo,       questions: traviacaQuestions),
    Module(name: "Zmyslové orgány",       color: .mint,         questions: zmysloveOrganyQuestions),
    Module(name: "Hormonálna",            color: .cyan,         questions: hormonalnaQuestions),
    Module(name: "Nervová sústava",       color: .gray,         questions: nervovaQuestions)
]

// Ak chceš, môžeš si ešte spraviť aj extra modul:
// let generalQuestions: [Question] = [ ... 70 otázok z PDF ... ]
// a pridať:
// Module(name: "Všeobecný test", color: .black, questions: generalQuestions)

enum QuizMode {
    case singleModule(Module)
    case allModules
}

// MARK: - APP ENTRY

struct BioQuizApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

// MARK: - CONTENT VIEW (hlavné menu)

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                Text("Biotest 3000")
                    .font(.largeTitle.bold())
                    .padding(.top, 16)

                Text("Vyber modul alebo si daj full random peklo.")
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                // FULL RANDOM TEST
                NavigationLink {
                    QuizView(mode: .allModules)
                } label: {
                    HStack(spacing: 10) {
                        Image(systemName: "shuffle")
                        Text("Full random test zo všetkých modulov")
                            .fontWeight(.semibold)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        LinearGradient(
                            colors: [.purple, .blue],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .foregroundColor(.white)
                    .cornerRadius(14)
                    .shadow(radius: 6)
                }
                .padding(.horizontal)

                // MODULY – GRID
                ScrollView {
                    LazyVGrid(columns: [
                        GridItem(.flexible()),
                        GridItem(.flexible()),
                        GridItem(.flexible())
                    ], spacing: 16) {
                        ForEach(modules) { module in
                            NavigationLink {
                                QuizView(mode: .singleModule(module))
                            } label: {
                                VStack(spacing: 8) {
                                    Text(module.name)
                                        .font(.headline)
                                        .multilineTextAlignment(.center)
                                    Text("\(module.questions.count) otázok")
                                        .font(.caption)
                                        .foregroundColor(.white.opacity(0.8))
                                }
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 80)
                                .background(module.color.gradient)
                                .foregroundColor(.white)
                                .cornerRadius(14)
                                .shadow(radius: 4)
                            }
                        }
                    }
                    .padding()
                }

                Spacer(minLength: 8)
            }
            .navigationTitle("Biológia – testovačka")
        }
    }
}

// MARK: - QUIZ VIEW

struct QuizView: View {
    let mode: QuizMode

    @State private var questions: [Question] = []
    @State private var currentIndex: Int = 0
    @State private var selectedIndex: Int? = nil
    @State private var showExplanation: Bool = false
    @State private var correctCount: Int = 0
    @State private var incorrectCount: Int = 0
    @State private var isFinished: Bool = false

    private var currentQuestion: Question? {
        guard questions.indices.contains(currentIndex) else { return nil }
        return questions[currentIndex]
    }

    private var titleText: String {
        switch mode {
        case .allModules:
            return "Full random test"
        case .singleModule(let module):
            return module.name
        }
    }

    init(mode: QuizMode) {
        self.mode = mode
        // načítaj otázky už v init-e
        switch mode {
        case .allModules:
            _questions = State(initialValue: modules.flatMap { $0.questions }.shuffled())
        case .singleModule(let module):
            _questions = State(initialValue: module.questions.shuffled())
        }
    }

    var body: some View {
        VStack(spacing: 20) {
            // HEADER
            HStack {
                Text(titleText)
                    .font(.title2.bold())
                Spacer()
                Text("\(currentIndex + 1) / \(questions.count)")
                    .font(.subheadline.monospacedDigit())
                    .foregroundColor(.secondary)
            }

            // PROGRESS BAR
            ProgressView(value: Double(currentIndex + 1),
                         total: Double(max(questions.count, 1)))
                .tint(.blue)
                .padding(.bottom, 8)

            Divider()

            if let q = currentQuestion {
                // TEXT OTÁZKY
                ScrollView {
                    VStack(alignment: .leading, spacing: 16) {
                        Text(q.text)
                            .font(.title3.weight(.semibold))
                            .frame(maxWidth: .infinity, alignment: .leading)

                        VStack(spacing: 10) {
                            ForEach(q.options.indices, id: \.self) { idx in
                                answerButton(for: q, optionIndex: idx)
                            }
                        }

                        if showExplanation {
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Vysvetlenie")
                                    .font(.headline)

                                Text(q.explanation)
                                    .font(.body)
                                    .fixedSize(horizontal: false, vertical: true) // nech si zoberie toľko výšky, koľko chce
                            }
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(Color.gray.opacity(0.12))
                            )
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                            )
                            .transition(.opacity)
                        
                        }
                    }
                    .padding(.vertical, 4)
                }
            } else {
                Text("Žiadne otázky. Niečo je rozbité.")
            }

            // SPODNÝ PANEL
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Správne: \(correctCount)")
                        .font(.subheadline.monospacedDigit())
                        .foregroundColor(.secondary)

                    Text("Nesprávne: \(incorrectCount)")
                        .font(.subheadline.monospacedDigit())
                        .foregroundColor(.secondary)
                }

                Spacer()

                Button {
                    nextQuestion()
                } label: {
                    HStack {
                        Text(currentIndex == questions.count - 1 ? "Ukončiť" : "Ďalšia otázka")
                        Image(systemName: "arrow.right.circle.fill")
                    }
                }
                .buttonStyle(.borderedProminent)
                .disabled(!showExplanation)
            }
        }
        .padding()
        .navigationTitle(titleText)
        .alert("Test ukončený", isPresented: $isFinished) {
            Button("Zavrieť", role: .cancel) { }
            Button("Reštartovať test") {
                restartTest()
            }
        } message: {
            Text("Správne: \(correctCount) z \(questions.count).\nNesprávne: \(incorrectCount).")
        }
    }

    // MARK: - UI helper pre tlačidlo odpovede

    @ViewBuilder
    private func answerButton(for question: Question, optionIndex idx: Int) -> some View {
        let optionText = question.options[idx]

        // Logika farieb po označení (bez príkazov, ktoré vracajú '()' vo ViewBuilderi)
        let isCorrect = idx == question.correctIndex

        let defaultBackground: Color = {
#if canImport(UIKit)
            Color(UIColor.secondarySystemBackground)
#elseif canImport(AppKit)
            Color(NSColor.windowBackgroundColor)
#else
            Color.gray.opacity(0.2)
#endif
        }()

        // Zvýrazňuj až po výbere odpovede
        let showHighlight = selectedIndex != nil
        let isSelectedWrong = (selectedIndex == idx) && !isCorrect

        let backgroundColor: Color = {
            if showHighlight && isCorrect { return .green.opacity(0.2) }
            if isSelectedWrong { return .red.opacity(0.2) }
            return defaultBackground
        }()

        let borderColor: Color = {
            if showHighlight && isCorrect { return .green }
            if isSelectedWrong { return .red }
            return .clear
        }()

        let textColor: Color = .primary

        Button {
            handleTapOnAnswer(index: idx, question: question)
        } label: {
            HStack(alignment: .top, spacing: 8) {
                Text(optionText.prefix(2)) // napr. "A)"
                    .font(.headline.monospaced())
                Text(String(optionText.dropFirst(3)))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(10)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(borderColor, lineWidth: borderColor == .clear ? 0 : 2)
            )
            .cornerRadius(10)
        }
        .buttonStyle(.plain)
        .disabled(selectedIndex != nil) // po výbere už neprepínaj odpoveď
    }

    // MARK: - LOGIKA

    private func handleTapOnAnswer(index: Int, question: Question) {
        guard selectedIndex == nil else { return } // už si odpovedal
        selectedIndex = index
        showExplanation = true
        if index == question.correctIndex {
            correctCount += 1
        } else {
            incorrectCount += 1
        }
    }

    private func nextQuestion() {
        guard !questions.isEmpty else { return }

        if currentIndex < questions.count - 1 {
            currentIndex += 1
            selectedIndex = nil
            showExplanation = false
        } else {
            // koniec testu
            isFinished = true
        }
    }

    private func restartTest() {
        currentIndex = 0
        selectedIndex = nil
        showExplanation = false
        correctCount = 0
        incorrectCount = 0

        switch mode {
        case .allModules:
            questions = modules.flatMap { $0.questions }.shuffled()
        case .singleModule(let module):
            questions = module.questions.shuffled()
        }

        isFinished = false
    }
}

