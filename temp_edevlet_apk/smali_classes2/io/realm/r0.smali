.class public abstract Lio/realm/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/r0$b;,
        Lio/realm/r0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final a:Lio/realm/r0$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/realm/r0$b;

    invoke-direct {v0}, Lio/realm/r0$b;-><init>()V

    iput-object v0, p0, Lio/realm/r0;->a:Lio/realm/r0$b;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lio/realm/r0;->a:Lio/realm/r0$b;

    invoke-virtual {v0}, Lio/realm/r0$b;->clear()V

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lio/realm/r0;->a:Lio/realm/r0$b;

    invoke-virtual {v0, p1}, Lio/realm/r0$b;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lio/realm/r0;->a:Lio/realm/r0$b;

    invoke-virtual {v0, p1}, Lio/realm/r0$b;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/r0;->a:Lio/realm/r0$b;

    invoke-virtual {v0}, Lio/realm/r0$b;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/r0;->a:Lio/realm/r0$b;

    invoke-virtual {v0, p1}, Lio/realm/r0$b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lio/realm/r0;->a:Lio/realm/r0$b;

    invoke-virtual {v0}, Lio/realm/r0$b;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/r0;->a:Lio/realm/r0$b;

    invoke-virtual {v0}, Lio/realm/r0$b;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/r0;->a:Lio/realm/r0$b;

    invoke-virtual {v0, p1, p2}, Lio/realm/r0$a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/r0;->a:Lio/realm/r0$b;

    invoke-virtual {v0, p1}, Lio/realm/r0$b;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/r0;->a:Lio/realm/r0$b;

    invoke-virtual {v0, p1}, Lio/realm/r0$b;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lio/realm/r0;->a:Lio/realm/r0$b;

    invoke-virtual {v0}, Lio/realm/r0$b;->size()I

    move-result v0

    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/r0;->a:Lio/realm/r0$b;

    invoke-virtual {v0}, Lio/realm/r0$b;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
