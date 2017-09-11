    Info<< "Reading field T\n" << endl;

    volScalarField T
    (
        IOobject
        (
            "T",
            runTime.timeName(),
            mesh,
            IOobject::MUST_READ,
            IOobject::AUTO_WRITE
        ),
        mesh
    );


    Info<< "Reading field U\n" << endl;

    volVectorField U
    (
        IOobject
        (
            "U",
            runTime.timeName(),
            mesh,
            IOobject::MUST_READ,
            IOobject::AUTO_WRITE
        ),
        mesh
    );

//----------------------------------------------------------//
// We have to read the turbulent kinematic viscosity
    Info<< "Reading field nut\n" << endl;

    volScalarField nut
    (
        IOobject
        (
            "nut",
            runTime.timeName(),
            mesh,
            IOobject::MUST_READ,
            IOobject::AUTO_WRITE
        ),
        mesh
    );
//----------------------------------------------------------//

    Info<< "Reading transportProperties\n" << endl;

    IOdictionary transportProperties
    (
        IOobject
        (
            "transportProperties",
            runTime.constant(),
            mesh,
            IOobject::MUST_READ_IF_MODIFIED,
            IOobject::NO_WRITE
        )
    );


    Info<< "Reading diffusivity DT\n" << endl;

    dimensionedScalar DT
    (
        transportProperties.lookup("DT")
    );

    #include "createPhi.H"
