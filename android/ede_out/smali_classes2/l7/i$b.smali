.class public final Ll7/i$b;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll7/i;


# direct methods
.method public constructor <init>(Ll7/i;)V
    .locals 0

    iput-object p1, p0, Ll7/i$b;->a:Ll7/i;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Ll7/i$b;->a:Ll7/i;

    invoke-virtual {v0}, Ll7/i;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll7/i$b;->a:Ll7/i;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Ll7/i;->b(Ljava/util/Map$Entry;)Ll7/i$e;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Ll7/i$b$a;

    invoke-direct {v0, p0}, Ll7/i$b$a;-><init>(Ll7/i$b;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Ll7/i$b;->a:Ll7/i;

    invoke-virtual {v0, p1}, Ll7/i;->b(Ljava/util/Map$Entry;)Ll7/i$e;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ll7/i;->d(Ll7/i$e;Z)V

    return v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Ll7/i$b;->a:Ll7/i;

    iget v0, v0, Ll7/i;->c:I

    return v0
.end method
