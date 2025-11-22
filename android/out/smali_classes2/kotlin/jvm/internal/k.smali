.class public abstract Lkotlin/jvm/internal/k;
.super Lkotlin/jvm/internal/m;
.source "SourceFile"

# interfaces
.implements Lda/i;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lkotlin/jvm/internal/m;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final computeReflected()Lda/c;
    .locals 1

    invoke-static {p0}, Lkotlin/jvm/internal/w;->b(Lkotlin/jvm/internal/k;)Lda/i;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Lda/h$a;
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/k;->f()Lda/i$a;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lda/i$a;
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/s;->g()Lda/m;

    move-result-object v0

    check-cast v0, Lda/i;

    invoke-interface {v0}, Lda/i;->f()Lda/i$a;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    move-object v0, p0

    check-cast v0, Lkotlin/jvm/internal/l;

    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l()Lda/l$a;
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/s;->g()Lda/m;

    move-result-object v0

    check-cast v0, Lda/i;

    invoke-interface {v0}, Lda/l;->l()Lda/l$a;

    move-result-object v0

    return-object v0
.end method
