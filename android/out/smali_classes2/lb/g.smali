.class public final Llb/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lmc/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmc/d;

    const-string v1, "[^\\p{L}\\p{Digit}]"

    invoke-direct {v0, v1}, Lmc/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Llb/g;->a:Lmc/d;

    return-void
.end method
