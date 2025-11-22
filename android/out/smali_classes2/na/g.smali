.class public final Lna/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Llb/f;

.field public static final b:Llb/f;

.field public static final c:Llb/f;

.field public static final d:Llb/f;

.field public static final e:Llb/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "message"

    invoke-static {v0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object v0

    sput-object v0, Lna/g;->a:Llb/f;

    const-string v0, "replaceWith"

    invoke-static {v0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object v0

    sput-object v0, Lna/g;->b:Llb/f;

    const-string v0, "level"

    invoke-static {v0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object v0

    sput-object v0, Lna/g;->c:Llb/f;

    const-string v0, "expression"

    invoke-static {v0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object v0

    sput-object v0, Lna/g;->d:Llb/f;

    const-string v0, "imports"

    invoke-static {v0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object v0

    sput-object v0, Lna/g;->e:Llb/f;

    return-void
.end method
