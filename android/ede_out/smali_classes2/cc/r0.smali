.class public final Lcc/r0;
.super Lcc/j1;
.source "SourceFile"


# instance fields
.field public final a:Lcc/m0;


# direct methods
.method public constructor <init>(Lja/k;)V
    .locals 1

    const-string v0, "kotlinBuiltIns"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcc/j1;-><init>()V

    invoke-virtual {p1}, Lja/k;->o()Lcc/m0;

    move-result-object p1

    iput-object p1, p0, Lcc/r0;->a:Lcc/m0;

    return-void
.end method


# virtual methods
.method public final a(Ldc/f;)Lcc/i1;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final b()Lcc/t1;
    .locals 1

    sget-object v0, Lcc/t1;->e:Lcc/t1;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getType()Lcc/e0;
    .locals 1

    iget-object v0, p0, Lcc/r0;->a:Lcc/m0;

    return-object v0
.end method
