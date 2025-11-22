.class public final Lyb/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Llb/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Llb/c;

    const-string v1, "kotlin.suspend"

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyb/j0;->a:Llb/c;

    new-instance v0, Llb/a;

    sget-object v1, Lja/o;->k:Llb/c;

    const-string v2, "suspend"

    invoke-static {v2}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Llb/a;-><init>(Llb/c;Llb/f;)V

    return-void
.end method
