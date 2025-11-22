.class public abstract Ls4/n0;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient a:Ls4/c;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public transient b:Ls4/m0;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls4/n0;->a:Ls4/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Ls4/e;

    .line 7
    .line 8
    new-instance v1, Ls4/c;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Ls4/c;-><init>(Ls4/e;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Ls4/n0;->a:Ls4/c;

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    return-object v0
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

    iget-object v0, p0, Ls4/n0;->b:Ls4/m0;

    if-nez v0, :cond_0

    new-instance v0, Ls4/m0;

    invoke-direct {v0, p0}, Ls4/m0;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Ls4/n0;->b:Ls4/m0;

    :cond_0
    return-object v0
.end method
