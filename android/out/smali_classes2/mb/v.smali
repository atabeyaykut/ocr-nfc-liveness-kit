.class public final Lmb/v;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lmb/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Lmb/n;"
    }
.end annotation


# instance fields
.field public final a:Lmb/n;


# direct methods
.method public constructor <init>(Lmb/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lmb/v;->a:Lmb/n;

    return-void
.end method


# virtual methods
.method public final O(Lmb/o;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final c0(I)Lmb/c;
    .locals 1

    iget-object v0, p0, Lmb/v;->a:Lmb/n;

    invoke-interface {v0, p1}, Lmb/n;->c0(I)Lmb/c;

    move-result-object p1

    return-object p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmb/v;->a:Lmb/n;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lmb/v$b;

    invoke-direct {v0, p0}, Lmb/v$b;-><init>(Lmb/v;)V

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lmb/v;->a:Lmb/n;

    invoke-interface {v0}, Lmb/n;->k()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lmb/v$a;

    invoke-direct {v0, p0, p1}, Lmb/v$a;-><init>(Lmb/v;I)V

    return-object v0
.end method

.method public final p()Lmb/v;
    .locals 0

    return-object p0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lmb/v;->a:Lmb/n;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
