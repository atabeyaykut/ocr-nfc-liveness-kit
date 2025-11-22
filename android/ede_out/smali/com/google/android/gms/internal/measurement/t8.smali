.class public final Lcom/google/android/gms/internal/measurement/t8;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/measurement/d7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Lcom/google/android/gms/internal/measurement/d7;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/d7;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/d7;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/t8;->a:Lcom/google/android/gms/internal/measurement/d7;

    return-void
.end method


# virtual methods
.method public final J(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t8;->a:Lcom/google/android/gms/internal/measurement/d7;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/d7;->J(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e()Lcom/google/android/gms/internal/measurement/d7;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t8;->a:Lcom/google/android/gms/internal/measurement/d7;

    check-cast v0, Lcom/google/android/gms/internal/measurement/c7;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/c7;->l(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t8;->a:Lcom/google/android/gms/internal/measurement/d7;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/d7;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
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

    new-instance v0, Lcom/google/android/gms/internal/measurement/s8;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/s8;-><init>(Lcom/google/android/gms/internal/measurement/t8;)V

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

    new-instance v0, Lcom/google/android/gms/internal/measurement/r8;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/r8;-><init>(Lcom/google/android/gms/internal/measurement/t8;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t8;->a:Lcom/google/android/gms/internal/measurement/d7;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final t(Lcom/google/android/gms/internal/measurement/v5;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
