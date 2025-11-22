.class public final Lcom/bumptech/glide/load/data/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/data/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/e<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le1/w;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ly0/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le1/w;

    invoke-direct {v0, p1, p2}, Le1/w;-><init>(Ljava/io/InputStream;Ly0/b;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/data/k;->a:Le1/w;

    const/high16 p1, 0x500000

    invoke-virtual {v0, p1}, Le1/w;->mark(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/data/k;->a:Le1/w;

    invoke-virtual {v0}, Le1/w;->reset()V

    return-object v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/data/k;->a:Le1/w;

    invoke-virtual {v0}, Le1/w;->b()V

    return-void
.end method
