.class public final Lcom/google/android/gms/internal/measurement/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lcom/google/android/gms/internal/measurement/p;
.implements Lcom/google/android/gms/internal/measurement/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/google/android/gms/internal/measurement/p;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/p;",
        "Lcom/google/android/gms/internal/measurement/l;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/TreeMap;

.field public final b:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/f;->a:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/f;->b:Ljava/util/TreeMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/p;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/f;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/f;->G(ILcom/google/android/gms/internal/measurement/p;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/f;->a:Ljava/util/TreeMap;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/f;->z(I)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/u;

    if-nez v4, :cond_1

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/n;

    if-nez v4, :cond_1

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/p;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final C()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/f;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final D()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/f;->z(I)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final E(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/f;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt p1, v1, :cond_3

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p1, v1, :cond_2

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-ltz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/measurement/p;->i:Lcom/google/android/gms/internal/measurement/u;

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    :goto_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt p1, v1, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/p;

    if-eqz v2, :cond_2

    add-int/lit8 v3, p1, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final G(ILcom/google/android/gms/internal/measurement/p;)V
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "elements"
        }
    .end annotation

    .line 1
    const/16 v0, 0x7ed4

    .line 2
    .line 3
    if-gt p1, v0, :cond_2

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/f;->a:Ljava/util/TreeMap;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 24
    .line 25
    const/16 v0, 0x20

    .line 26
    .line 27
    const-string v1, "Out of bounds index: "

    .line 28
    .line 29
    invoke-static {v0, v1, p1}, Landroidx/appcompat/widget/v;->c(ILjava/lang/String;I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p2

    .line 37
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string p2, "Array too large"

    .line 40
    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method public final H(I)Z
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/f;->a:Ljava/util/TreeMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-gt p1, v1, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 27
    .line 28
    const/16 v1, 0x20

    .line 29
    .line 30
    const-string v2, "Out of bounds index: "

    .line 31
    .line 32
    invoke-static {v1, v2, p1}, Landroidx/appcompat/widget/v;->c(ILjava/lang/String;I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method public final d()Lcom/google/android/gms/internal/measurement/p;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/measurement/f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/f;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/f;->a:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/gms/internal/measurement/l;

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/f;->a:Ljava/util/TreeMap;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/p;

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/p;

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/p;->d()Lcom/google/android/gms/internal/measurement/p;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/f;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/f;->a:Ljava/util/TreeMap;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/f;->a:Ljava/util/TreeMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {v1}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_0
    invoke-virtual {v1}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v3, v4, :cond_5

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/f;->z(I)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v4

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/f;->z(I)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    const-string v0, ","

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/f;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/f;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public final i()Ljava/lang/Double;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/f;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/f;->z(I)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/p;->i()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-gtz v0, :cond_1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/android/gms/internal/measurement/p;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/e;-><init>(Lcom/google/android/gms/internal/measurement/f;)V

    return-object v0
.end method

.method public final l()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final m(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/f;->b:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final o()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/android/gms/internal/measurement/p;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/f;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/f;->b:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/d;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/d;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ","

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/f;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/p;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/f;->b:Ljava/util/TreeMap;

    if-nez p2, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final w(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/s3;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/p;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "concat"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "reduceRight"

    const-string v7, "push"

    const-string v8, "unshift"

    const-string v9, "splice"

    const-string v10, "reduce"

    const-string v11, "toString"

    const-string v12, "filter"

    const-string v13, "forEach"

    const-string v14, "lastIndexOf"

    const-string v15, "map"

    move-object/from16 v16, v4

    const-string v4, "pop"

    const-string v0, "join"

    const-string v2, "some"

    const-string v3, "sort"

    move-object/from16 v17, v8

    const-string v8, "every"

    move-object/from16 v18, v11

    const-string v11, "shift"

    move-object/from16 v19, v9

    const-string v9, "slice"

    move-object/from16 v20, v3

    const-string v3, "reverse"

    move-object/from16 v21, v2

    const-string v2, "indexOf"

    if-nez v5, :cond_5

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    move-object/from16 v5, v21

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    move-object/from16 v18, v5

    move-object/from16 v5, v17

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/t;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/t;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v1, v0, v2, v3}, Lx5/a;->v(Lcom/google/android/gms/internal/measurement/l;Lcom/google/android/gms/internal/measurement/t;Lcom/google/android/gms/internal/measurement/s3;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v0

    return-object v0

    :cond_1
    move-object/from16 v18, v5

    move-object/from16 v5, v17

    :goto_0
    move-object/from16 v17, v12

    move-object/from16 v12, v21

    move-object/from16 v25, v20

    move-object/from16 v20, v0

    move-object/from16 v0, v25

    move-object/from16 v26, v19

    move-object/from16 v19, v10

    move-object/from16 v10, v26

    goto :goto_1

    :cond_2
    move-object/from16 v19, v10

    move-object v10, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v12

    move-object/from16 v12, v21

    move-object/from16 v25, v20

    move-object/from16 v20, v0

    move-object/from16 v0, v25

    goto :goto_1

    :cond_3
    move-object/from16 v20, v19

    move-object/from16 v19, v10

    move-object v10, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v12

    move-object/from16 v12, v21

    goto :goto_1

    :cond_4
    move-object/from16 v25, v12

    move-object v12, v0

    move-object/from16 v0, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v10

    move-object v10, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v25

    goto :goto_1

    :cond_5
    move-object/from16 v5, v17

    move-object/from16 v17, v12

    move-object v12, v0

    move-object/from16 v0, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v10

    move-object/from16 v10, v21

    .line 1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v21

    sparse-switch v21, :sswitch_data_0

    :cond_6
    move-object/from16 v5, v17

    goto/16 :goto_4

    :sswitch_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x4

    goto :goto_2

    :sswitch_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0xc

    goto :goto_2

    :sswitch_2
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0xb

    goto :goto_2

    :sswitch_3
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0xe

    goto :goto_2

    :sswitch_4
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0xd

    goto :goto_2

    :sswitch_5
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v5, v17

    goto/16 :goto_3

    :sswitch_6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x10

    goto :goto_2

    :sswitch_7
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0xf

    goto :goto_2

    :sswitch_8
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x9

    goto :goto_2

    :sswitch_9
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    goto :goto_2

    :sswitch_a
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    goto :goto_2

    :sswitch_b
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    goto :goto_2

    :sswitch_c
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x13

    goto :goto_2

    :sswitch_d
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    goto :goto_2

    :sswitch_e
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x3

    goto :goto_2

    :sswitch_f
    move-object/from16 v5, v20

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x11

    goto :goto_2

    :sswitch_10
    move-object/from16 v5, v19

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0xa

    goto :goto_2

    :sswitch_11
    move-object/from16 v5, v17

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x2

    goto :goto_3

    :sswitch_12
    move-object/from16 v6, v16

    move-object/from16 v5, v17

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    :goto_3
    move-object/from16 v6, v18

    goto :goto_6

    :cond_7
    :goto_4
    move-object/from16 v6, v18

    goto :goto_5

    :sswitch_13
    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x12

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v1, -0x1

    :goto_6
    sget-object v7, Lcom/google/android/gms/internal/measurement/p;->i:Lcom/google/android/gms/internal/measurement/u;

    sget-object v16, Lcom/google/android/gms/internal/measurement/p;->U:Lcom/google/android/gms/internal/measurement/g;

    sget-object v17, Lcom/google/android/gms/internal/measurement/p;->S:Lcom/google/android/gms/internal/measurement/g;

    move-object/from16 p1, v7

    const-string v7, ","

    move-object/from16 v19, v5

    move-object/from16 v18, v8

    move-object/from16 v8, p0

    iget-object v5, v8, Lcom/google/android/gms/internal/measurement/f;->a:Ljava/util/TreeMap;

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    move-object/from16 v22, v13

    const-string v13, "Callback should be a method"

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    const-wide/16 v14, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Command not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/measurement/f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/f;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/p;

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v2

    instance-of v4, v2, Lcom/google/android/gms/internal/measurement/h;

    if-nez v4, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v4

    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/internal/measurement/f;->G(ILcom/google/android/gms/internal/measurement/p;)V

    goto :goto_7

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Argument evaluation failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->C()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/measurement/f;->z(I)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/measurement/f;->G(ILcom/google/android/gms/internal/measurement/p;)V

    goto :goto_8

    .line 2
    :cond_b
    invoke-virtual {v5}, Ljava/util/TreeMap;->clear()V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f;->C()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/f;->z(I)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v2

    invoke-virtual {v8, v3, v2}, Lcom/google/android/gms/internal/measurement/f;->G(ILcom/google/android/gms/internal/measurement/p;)V

    goto :goto_9

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/measurement/i;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_1c

    :pswitch_1
    const/4 v0, 0x0

    move-object/from16 v1, p3

    invoke-static {v6, v0, v1}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/t;

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/measurement/f;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/t;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1c

    :pswitch_2
    move-object/from16 v3, p2

    move-object/from16 v1, p3

    const/4 v0, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v0, Lcom/google/android/gms/internal/measurement/f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/f;-><init>()V

    goto/16 :goto_1c

    :cond_d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/p;->i()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lc5/w;->I(D)D

    move-result-wide v6

    double-to-int v2, v6

    if-gez v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_a

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v0

    if-le v2, v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v2

    :cond_f
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v0

    new-instance v4, Lcom/google/android/gms/internal/measurement/f;

    invoke-direct {v4}, Lcom/google/android/gms/internal/measurement/f;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_16

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/internal/measurement/p;->i()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lc5/w;->I(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-lez v6, :cond_10

    move v7, v2

    :goto_b
    add-int v9, v2, v6

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-ge v7, v9, :cond_10

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/measurement/f;->z(I)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v9

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v10

    invoke-virtual {v4, v10, v9}, Lcom/google/android/gms/internal/measurement/f;->G(ILcom/google/android/gms/internal/measurement/p;)V

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/measurement/f;->E(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_10
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x2

    if-le v0, v6, :cond_17

    const/4 v0, 0x2

    :goto_c
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v6

    instance-of v7, v6, Lcom/google/android/gms/internal/measurement/h;

    if-nez v7, :cond_15

    add-int v7, v2, v0

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_14

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v9

    if-lt v7, v9, :cond_11

    goto :goto_e

    :cond_11
    invoke-virtual {v5}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :goto_d
    if-lt v9, v7, :cond_13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/p;

    if-eqz v11, :cond_12

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v8, v12, v11}, Lcom/google/android/gms/internal/measurement/f;->G(ILcom/google/android/gms/internal/measurement/p;)V

    invoke-virtual {v5, v10}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    add-int/lit8 v9, v9, -0x1

    goto :goto_d

    :cond_13
    :goto_e
    invoke-virtual {v8, v7, v6}, Lcom/google/android/gms/internal/measurement/f;->G(ILcom/google/android/gms/internal/measurement/p;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x20

    const-string v2, "Invalid value index: "

    .line 5
    invoke-static {v1, v2, v7}, Landroidx/appcompat/widget/v;->c(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse elements to add"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_f
    if-ge v2, v0, :cond_17

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/measurement/f;->z(I)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v3

    invoke-virtual {v4, v3, v1}, Lcom/google/android/gms/internal/measurement/f;->G(ILcom/google/android/gms/internal/measurement/p;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v2, v1}, Lcom/google/android/gms/internal/measurement/f;->G(ILcom/google/android/gms/internal/measurement/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_17
    move-object v1, v4

    goto/16 :goto_27

    :pswitch_3
    move-object/from16 v3, p2

    move-object/from16 v1, p3

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lc5/w;->d0(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_18

    goto/16 :goto_16

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->D()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/j;

    if-eqz v2, :cond_19

    check-cast v1, Lcom/google/android/gms/internal/measurement/j;

    goto :goto_10

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Comparator should be a method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    const/4 v1, 0x0

    :goto_10
    new-instance v2, Lcom/google/android/gms/internal/measurement/b0;

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/measurement/b0;-><init>(Lcom/google/android/gms/internal/measurement/j;Lcom/google/android/gms/internal/measurement/s3;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 8
    invoke-virtual {v5}, Ljava/util/TreeMap;->clear()V

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v8, v1, v3}, Lcom/google/android/gms/internal/measurement/f;->G(ILcom/google/android/gms/internal/measurement/p;)V

    move v1, v2

    goto :goto_11

    :pswitch_4
    move-object/from16 v3, p2

    move-object/from16 v1, p3

    const/4 v0, 0x1

    invoke-static {v10, v0, v1}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/j;

    if-eqz v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v1

    if-nez v1, :cond_1b

    goto/16 :goto_23

    :cond_1b
    check-cast v0, Lcom/google/android/gms/internal/measurement/j;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->C()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/measurement/f;->H(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/measurement/f;->z(I)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Lcom/google/android/gms/internal/measurement/i;

    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    const/4 v2, 0x1

    aput-object v5, v4, v2

    const/4 v2, 0x2

    aput-object v8, v4, v2

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/measurement/j;->a(Lcom/google/android/gms/internal/measurement/s3;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/p;->l()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1c

    goto/16 :goto_24

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    move-object/from16 v3, p2

    move-object/from16 v1, p3

    const/4 v0, 0x2

    invoke-static {v9, v0, v1}, Lc5/w;->d0(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->d()Lcom/google/android/gms/internal/measurement/p;

    move-result-object v0

    goto/16 :goto_1c

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v0

    int-to-double v4, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/p;->i()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lc5/w;->I(D)D

    move-result-wide v6

    cmpg-double v0, v6, v14

    if-gez v0, :cond_1f

    add-double/2addr v6, v4

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    goto :goto_12

    :cond_1f
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    :goto_12
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_21

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/p;->i()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lc5/w;->I(D)D

    move-result-wide v0

    cmpg-double v2, v0, v14

    if-gez v2, :cond_20

    add-double/2addr v4, v0

    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    goto :goto_13

    :cond_20
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    :cond_21
    :goto_13
    new-instance v0, Lcom/google/android/gms/internal/measurement/f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/f;-><init>()V

    double-to-int v1, v6

    :goto_14
    int-to-double v2, v1

    cmpg-double v6, v2, v4

    if-gez v6, :cond_30

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/measurement/f;->z(I)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/measurement/f;->G(ILcom/google/android/gms/internal/measurement/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :pswitch_6
    move-object/from16 v1, p3

    const/4 v0, 0x0

    invoke-static {v11, v0, v1}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v1

    if-nez v1, :cond_27

    goto/16 :goto_21

    :pswitch_7
    move-object/from16 v1, p3

    const/4 v0, 0x0

    invoke-static {v3, v0, v1}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v0

    if-eqz v0, :cond_24

    const/4 v1, 0x0

    :goto_15
    div-int/lit8 v2, v0, 0x2

    if-ge v1, v2, :cond_24

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/measurement/f;->H(I)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/measurement/f;->z(I)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v3}, Lcom/google/android/gms/internal/measurement/f;->G(ILcom/google/android/gms/internal/measurement/p;)V

    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v3, v1

    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/measurement/f;->H(I)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/measurement/f;->z(I)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v4

    invoke-virtual {v8, v1, v4}, Lcom/google/android/gms/internal/measurement/f;->G(ILcom/google/android/gms/internal/measurement/p;)V

    :cond_22
    invoke-virtual {v8, v3, v2}, Lcom/google/android/gms/internal/measurement/f;->G(ILcom/google/android/gms/internal/measurement/p;)V

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_24
    :goto_16
    move-object v1, v8

    goto/16 :goto_27

    :pswitch_8
    move-object/from16 v3, p2

    move-object/from16 v1, p3

    const/4 v0, 0x0

    goto :goto_17

    :pswitch_9
    move-object/from16 v3, p2

    move-object/from16 v1, p3

    const/4 v0, 0x1

    :goto_17
    invoke-static {v8, v3, v1, v0}, Lcom/google/android/gms/internal/measurement/p5;->e(Lcom/google/android/gms/internal/measurement/f;Lcom/google/android/gms/internal/measurement/s3;Ljava/util/ArrayList;Z)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v0

    goto/16 :goto_1c

    :pswitch_a
    move-object/from16 v3, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v2

    invoke-virtual {v8, v2, v1}, Lcom/google/android/gms/internal/measurement/f;->G(ILcom/google/android/gms/internal/measurement/p;)V

    goto :goto_18

    :cond_25
    new-instance v0, Lcom/google/android/gms/internal/measurement/i;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_1c

    :pswitch_b
    move-object/from16 v1, p3

    const/4 v0, 0x0

    invoke-static {v4, v0, v1}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_21

    :cond_26
    add-int/lit8 v0, v0, -0x1

    :cond_27
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/measurement/f;->z(I)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v1

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/measurement/f;->E(I)V

    goto/16 :goto_27

    :pswitch_c
    move-object/from16 v3, p2

    move-object/from16 v1, p3

    const/4 v0, 0x0

    const/4 v2, 0x1

    move-object/from16 v4, v24

    invoke-static {v4, v2, v1}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/o;

    if-eqz v1, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v1

    if-nez v1, :cond_28

    new-instance v0, Lcom/google/android/gms/internal/measurement/f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/f;-><init>()V

    goto/16 :goto_1c

    :cond_28
    check-cast v0, Lcom/google/android/gms/internal/measurement/o;

    const/4 v1, 0x0

    invoke-static {v8, v3, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/p5;->b(Lcom/google/android/gms/internal/measurement/f;Lcom/google/android/gms/internal/measurement/s3;Lcom/google/android/gms/internal/measurement/o;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/f;

    move-result-object v0

    goto/16 :goto_1c

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_d
    move-object/from16 v3, p2

    move-object/from16 v1, p3

    const/4 v0, 0x2

    move-object/from16 v2, v23

    invoke-static {v2, v0, v1}, Lc5/w;->d0(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v7

    goto :goto_19

    :cond_2a
    move-object/from16 v7, p1

    :goto_19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v4, v0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2c

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/p;->i()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    goto :goto_1a

    :cond_2b
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/p;->i()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lc5/w;->I(D)D

    move-result-wide v0

    :goto_1a
    move-wide v4, v0

    cmpg-double v0, v4, v14

    if-gez v0, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v0

    int-to-double v0, v0

    add-double/2addr v4, v0

    :cond_2c
    cmpg-double v0, v4, v14

    if-gez v0, :cond_2d

    new-instance v0, Lcom/google/android/gms/internal/measurement/i;

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    goto :goto_1c

    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    :goto_1b
    if-ltz v0, :cond_2f

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/measurement/f;->H(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/measurement/f;->z(I)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v1

    invoke-static {v1, v7}, Lc5/w;->f0(Lcom/google/android/gms/internal/measurement/p;Lcom/google/android/gms/internal/measurement/p;)Z

    move-result v1

    if-eqz v1, :cond_2e

    new-instance v1, Lcom/google/android/gms/internal/measurement/i;

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_27

    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    :cond_2f
    new-instance v0, Lcom/google/android/gms/internal/measurement/i;

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    goto :goto_1c

    :pswitch_e
    move-object/from16 v3, p2

    move-object/from16 v1, p3

    const/4 v0, 0x1

    invoke-static {v12, v0, v1}, Lc5/w;->d0(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v0

    if-nez v0, :cond_31

    sget-object v0, Lcom/google/android/gms/internal/measurement/p;->W:Lcom/google/android/gms/internal/measurement/t;

    :cond_30
    :goto_1c
    move-object v1, v0

    goto/16 :goto_27

    :cond_31
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_34

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/n;

    if-nez v1, :cond_33

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/u;

    if-eqz v1, :cond_32

    goto :goto_1d

    :cond_32
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/p;->h()Ljava/lang/String;

    move-result-object v7

    goto :goto_1e

    :cond_33
    :goto_1d
    const-string v7, ""

    :cond_34
    :goto_1e
    new-instance v0, Lcom/google/android/gms/internal/measurement/t;

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/measurement/f;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/t;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    :pswitch_f
    move-object/from16 v3, p2

    move-object/from16 v1, p3

    const/4 v0, 0x2

    invoke-static {v2, v0, v1}, Lc5/w;->d0(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v7

    goto :goto_1f

    :cond_35
    move-object/from16 v7, p1

    :goto_1f
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_38

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/p;->i()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lc5/w;->I(D)D

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_36

    new-instance v0, Lcom/google/android/gms/internal/measurement/i;

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    goto :goto_1c

    :cond_36
    cmpg-double v2, v0, v14

    if-gez v2, :cond_37

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v2

    int-to-double v2, v2

    add-double v14, v2, v0

    goto :goto_20

    :cond_37
    move-wide v14, v0

    :cond_38
    :goto_20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->C()Ljava/util/Iterator;

    move-result-object v0

    :cond_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v2, v1

    cmpg-double v4, v2, v14

    if-ltz v4, :cond_39

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/measurement/f;->z(I)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v1

    invoke-static {v1, v7}, Lc5/w;->f0(Lcom/google/android/gms/internal/measurement/p;Lcom/google/android/gms/internal/measurement/p;)Z

    move-result v1

    if-eqz v1, :cond_39

    new-instance v0, Lcom/google/android/gms/internal/measurement/i;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_1c

    :cond_3a
    new-instance v0, Lcom/google/android/gms/internal/measurement/i;

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_1c

    :pswitch_10
    move-object/from16 v3, p2

    move-object/from16 v1, p3

    const/4 v0, 0x1

    move-object/from16 v2, v22

    invoke-static {v2, v0, v1}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/o;

    if-eqz v1, :cond_3c

    .line 10
    invoke-virtual {v5}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-nez v1, :cond_3b

    goto :goto_21

    .line 11
    :cond_3b
    check-cast v0, Lcom/google/android/gms/internal/measurement/o;

    const/4 v1, 0x0

    invoke-static {v8, v3, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/p5;->b(Lcom/google/android/gms/internal/measurement/f;Lcom/google/android/gms/internal/measurement/s3;Lcom/google/android/gms/internal/measurement/o;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/f;

    :goto_21
    move-object/from16 v1, p1

    goto/16 :goto_27

    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_11
    move-object/from16 v3, p2

    move-object/from16 v1, p3

    const/4 v0, 0x1

    move-object/from16 v2, v19

    invoke-static {v2, v0, v1}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/o;

    if-eqz v1, :cond_3f

    .line 12
    invoke-virtual {v5}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-nez v1, :cond_3d

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/measurement/f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/f;-><init>()V

    goto/16 :goto_1c

    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->d()Lcom/google/android/gms/internal/measurement/p;

    move-result-object v1

    check-cast v0, Lcom/google/android/gms/internal/measurement/o;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-static {v8, v3, v0, v4, v2}, Lcom/google/android/gms/internal/measurement/p5;->b(Lcom/google/android/gms/internal/measurement/f;Lcom/google/android/gms/internal/measurement/s3;Lcom/google/android/gms/internal/measurement/o;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/f;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/measurement/f;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/f;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f;->C()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/measurement/f;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/f;->z(I)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/measurement/f;->G(ILcom/google/android/gms/internal/measurement/p;)V

    goto :goto_22

    :cond_3e
    move-object v1, v2

    goto/16 :goto_27

    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_12
    move-object/from16 v3, p2

    move-object/from16 v1, p3

    const/4 v0, 0x1

    move-object/from16 v2, v18

    invoke-static {v2, v0, v1}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/o;

    if-eqz v1, :cond_43

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v1

    if-nez v1, :cond_40

    goto :goto_24

    :cond_40
    check-cast v0, Lcom/google/android/gms/internal/measurement/o;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8, v3, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/p5;->b(Lcom/google/android/gms/internal/measurement/f;Lcom/google/android/gms/internal/measurement/s3;Lcom/google/android/gms/internal/measurement/o;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v1

    if-eq v0, v1, :cond_42

    :cond_41
    :goto_23
    move-object/from16 v1, v16

    goto :goto_27

    :cond_42
    :goto_24
    move-object/from16 v1, v17

    goto :goto_27

    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_13
    move-object/from16 v3, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/f;->d()Lcom/google/android/gms/internal/measurement/p;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_30

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_44
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v2

    instance-of v4, v2, Lcom/google/android/gms/internal/measurement/h;

    if-nez v4, :cond_46

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/measurement/f;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v5

    instance-of v6, v2, Lcom/google/android/gms/internal/measurement/f;

    if-eqz v6, :cond_45

    check-cast v2, Lcom/google/android/gms/internal/measurement/f;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/f;->C()Ljava/util/Iterator;

    move-result-object v6

    :goto_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/f;->z(I)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v7

    add-int/2addr v9, v5

    invoke-virtual {v4, v9, v7}, Lcom/google/android/gms/internal/measurement/f;->G(ILcom/google/android/gms/internal/measurement/p;)V

    goto :goto_26

    :cond_45
    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/internal/measurement/f;->G(ILcom/google/android/gms/internal/measurement/p;)V

    goto :goto_25

    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed evaluation of arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_27
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x69e9ad94 -> :sswitch_13
        -0x50c088ec -> :sswitch_12
        -0x4bf73488 -> :sswitch_11
        -0x37b90a9a -> :sswitch_10
        -0x3565b984 -> :sswitch_f
        -0x28732996 -> :sswitch_e
        -0x1bdda92d -> :sswitch_d
        -0x108c6a77 -> :sswitch_c
        0x1a55c -> :sswitch_b
        0x1b251 -> :sswitch_a
        0x31dd2a -> :sswitch_9
        0x34af1a -> :sswitch_8
        0x35f4f4 -> :sswitch_7
        0x35f59e -> :sswitch_6
        0x5c6731b -> :sswitch_5
        0x6856c82 -> :sswitch_4
        0x6873d92 -> :sswitch_3
        0x398d4c56 -> :sswitch_2
        0x418e52e2 -> :sswitch_1
        0x73d44649 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final x(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p;
    .locals 2

    const-string v0, "length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/measurement/i;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/f;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/f;->b:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/p;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/measurement/p;->i:Lcom/google/android/gms/internal/measurement/u;

    return-object p1
.end method

.method public final y()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/f;->a:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final z(I)Lcom/google/android/gms/internal/measurement/p;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/f;->H(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/f;->a:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/p;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/p;->i:Lcom/google/android/gms/internal/measurement/u;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Attempting to get element outside of current array"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
