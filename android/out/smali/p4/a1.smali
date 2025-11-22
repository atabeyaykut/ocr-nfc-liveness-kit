.class public abstract Lp4/a1;
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
.field public transient a:Lp4/n;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public transient b:Lp4/z0;
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
    iget-object v0, p0, Lp4/a1;->a:Lp4/n;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lp4/p;

    .line 7
    .line 8
    new-instance v1, Lp4/n;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lp4/n;-><init>(Lp4/p;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lp4/a1;->a:Lp4/n;

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

    iget-object v0, p0, Lp4/a1;->b:Lp4/z0;

    if-nez v0, :cond_0

    new-instance v0, Lp4/z0;

    invoke-direct {v0, p0}, Lp4/z0;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lp4/a1;->b:Lp4/z0;

    :cond_0
    return-object v0
.end method
