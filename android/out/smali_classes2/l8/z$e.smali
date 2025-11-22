.class public abstract Ll8/z$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll8/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "e"
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
.field public a:Ll8/z$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll8/z$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public b:Ll8/z$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll8/z$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public c:I

.field public final synthetic d:Ll8/z;


# direct methods
.method public constructor <init>(Ll8/z;)V
    .locals 1

    iput-object p1, p0, Ll8/z$e;->d:Ll8/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Ll8/z;->c:Ll8/z$f;

    iget-object v0, v0, Ll8/z$f;->d:Ll8/z$f;

    iput-object v0, p0, Ll8/z$e;->a:Ll8/z$f;

    const/4 v0, 0x0

    iput-object v0, p0, Ll8/z$e;->b:Ll8/z$f;

    iget p1, p1, Ll8/z;->e:I

    iput p1, p0, Ll8/z$e;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ll8/z$f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll8/z$f<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ll8/z$e;->a:Ll8/z$f;

    iget-object v1, p0, Ll8/z$e;->d:Ll8/z;

    iget-object v2, v1, Ll8/z;->c:Ll8/z$f;

    if-eq v0, v2, :cond_1

    iget v1, v1, Ll8/z;->e:I

    iget v2, p0, Ll8/z$e;->c:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Ll8/z$f;->d:Ll8/z$f;

    iput-object v1, p0, Ll8/z$e;->a:Ll8/z$f;

    iput-object v0, p0, Ll8/z$e;->b:Ll8/z$f;

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

    iget-object v0, p0, Ll8/z$e;->a:Ll8/z$f;

    iget-object v1, p0, Ll8/z$e;->d:Ll8/z;

    iget-object v1, v1, Ll8/z;->c:Ll8/z$f;

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

    iget-object v0, p0, Ll8/z$e;->b:Ll8/z$f;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Ll8/z$e;->d:Ll8/z;

    invoke-virtual {v2, v0, v1}, Ll8/z;->d(Ll8/z$f;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Ll8/z$e;->b:Ll8/z$f;

    iget v0, v2, Ll8/z;->e:I

    iput v0, p0, Ll8/z$e;->c:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
