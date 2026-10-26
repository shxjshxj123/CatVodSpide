.class public final Lcom/whl/quickjs/wrapper/JSModule;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sModuleLoader:Lcom/whl/quickjs/wrapper/JSModule$ModuleLoader;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertModuleName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/whl/quickjs/wrapper/JSModule;->sModuleLoader:Lcom/whl/quickjs/wrapper/JSModule$ModuleLoader;

    invoke-virtual {v0, p0, p1}, Lcom/whl/quickjs/wrapper/JSModule$ModuleLoader;->convertModuleName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getModuleScript(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/whl/quickjs/wrapper/JSModule;->sModuleLoader:Lcom/whl/quickjs/wrapper/JSModule$ModuleLoader;

    invoke-virtual {v0, p0}, Lcom/whl/quickjs/wrapper/JSModule$ModuleLoader;->getModuleScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setModuleLoader(Lcom/whl/quickjs/wrapper/JSModule$ModuleLoader;)V
    .registers 1

    sput-object p0, Lcom/whl/quickjs/wrapper/JSModule;->sModuleLoader:Lcom/whl/quickjs/wrapper/JSModule$ModuleLoader;

    return-void
.end method
