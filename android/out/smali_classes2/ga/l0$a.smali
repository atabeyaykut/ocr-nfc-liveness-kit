.class public abstract Lga/l0$a;
.super Lga/h;
.source "SourceFile"

# interfaces
.implements Lda/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lga/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PropertyType:",
        "Ljava/lang/Object;",
        "ReturnType:",
        "Ljava/lang/Object;",
        ">",
        "Lga/h<",
        "TReturnType;>;",
        "Lda/g<",
        "TReturnType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lga/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final isExternal()Z
    .locals 1

    invoke-virtual {p0}, Lga/l0$a;->r()Lma/k0;

    move-result-object v0

    invoke-interface {v0}, Lma/z;->isExternal()Z

    move-result v0

    return v0
.end method

.method public final isInfix()Z
    .locals 1

    invoke-virtual {p0}, Lga/l0$a;->r()Lma/k0;

    move-result-object v0

    invoke-interface {v0}, Lma/u;->isInfix()Z

    move-result v0

    return v0
.end method

.method public final isInline()Z
    .locals 1

    invoke-virtual {p0}, Lga/l0$a;->r()Lma/k0;

    move-result-object v0

    invoke-interface {v0}, Lma/u;->isInline()Z

    move-result v0

    return v0
.end method

.method public final isOperator()Z
    .locals 1

    invoke-virtual {p0}, Lga/l0$a;->r()Lma/k0;

    move-result-object v0

    invoke-interface {v0}, Lma/u;->isOperator()Z

    move-result v0

    return v0
.end method

.method public final isSuspend()Z
    .locals 1

    invoke-virtual {p0}, Lga/l0$a;->r()Lma/k0;

    move-result-object v0

    invoke-interface {v0}, Lma/u;->isSuspend()Z

    move-result v0

    return v0
.end method

.method public final m()Lga/s;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lga/l0$a;->s()Lga/l0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lga/l0;->e:Lga/s;

    .line 6
    .line 7
    return-object v0
.end method

.method public final n()Lha/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lha/f<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final q()Z
    .locals 1

    invoke-virtual {p0}, Lga/l0$a;->s()Lga/l0;

    move-result-object v0

    invoke-virtual {v0}, Lga/l0;->q()Z

    move-result v0

    return v0
.end method

.method public abstract r()Lma/k0;
.end method

.method public abstract s()Lga/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lga/l0<",
            "TPropertyType;>;"
        }
    .end annotation
.end method
