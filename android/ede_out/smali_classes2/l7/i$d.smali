.class public abstract Ll7/i$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Ll7/i$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll7/i$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public b:Ll7/i$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll7/i$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public c:I

.field public final synthetic d:Ll7/i;


# direct methods
.method public constructor <init>(Ll7/i;)V
    .locals 1

    iput-object p1, p0, Ll7/i$d;->d:Ll7/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Ll7/i;->e:Ll7/i$e;

    iget-object v0, v0, Ll7/i$e;->d:Ll7/i$e;

    iput-object v0, p0, Ll7/i$d;->a:Ll7/i$e;

    const/4 v0, 0x0

    iput-object v0, p0, Ll7/i$d;->b:Ll7/i$e;

    iget p1, p1, Ll7/i;->d:I

    iput p1, p0, Ll7/i$d;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ll7/i$e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll7/i$e<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ll7/i$d;->a:Ll7/i$e;

    iget-object v1, p0, Ll7/i$d;->d:Ll7/i;

    iget-object v2, v1, Ll7/i;->e:Ll7/i$e;

    if-eq v0, v2, :cond_1

    iget v1, v1, Ll7/i;->d:I

    iget v2, p0, Ll7/i$d;->c:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Ll7/i$e;->d:Ll7/i$e;

    iput-object v1, p0, Ll7/i$d;->a:Ll7/i$e;

    iput-object v0, p0, Ll7/i$d;->b:Ll7/i$e;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Ll7/i$d;->a:Ll7/i$e;

    iget-object v1, p0, Ll7/i$d;->d:Ll7/i;

    iget-object v1, v1, Ll7/i;->e:Ll7/i$e;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Ll7/i$d;->b:Ll7/i$e;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Ll7/i$d;->d:Ll7/i;

    invoke-virtual {v2, v0, v1}, Ll7/i;->d(Ll7/i$e;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Ll7/i$d;->b:Ll7/i$e;

    iget v0, v2, Ll7/i;->d:I

    iput v0, p0, Ll7/i$d;->c:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
