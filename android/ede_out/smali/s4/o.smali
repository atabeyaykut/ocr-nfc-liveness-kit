.class public abstract Ls4/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls4/p0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls4/p0<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient a:Ls4/g;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public transient b:Ls4/e;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ls4/p0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    check-cast p1, Ls4/p0;

    invoke-virtual {p0}, Ls4/o;->g()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Ls4/p0;->g()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls4/o;->b:Ls4/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Ls4/m;

    .line 7
    .line 8
    new-instance v1, Ls4/e;

    .line 9
    .line 10
    iget-object v2, v0, Ls4/m;->c:Ljava/util/Map;

    .line 11
    .line 12
    invoke-direct {v1, v0, v2}, Ls4/e;-><init>(Ls4/m;Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Ls4/o;->b:Ls4/e;

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Ls4/o;->g()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public final j()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls4/o;->a:Ls4/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Ls4/m;

    .line 7
    .line 8
    new-instance v1, Ls4/g;

    .line 9
    .line 10
    iget-object v2, v0, Ls4/m;->c:Ljava/util/Map;

    .line 11
    .line 12
    invoke-direct {v1, v0, v2}, Ls4/g;-><init>(Ls4/m;Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Ls4/o;->a:Ls4/g;

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ls4/o;->g()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ls4/e;

    iget-object v0, v0, Ls4/e;->c:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
