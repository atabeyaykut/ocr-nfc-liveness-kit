.class public final Lh/e;
.super Led/m;
.source "SourceFile"


# instance fields
.field public final b:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "Ljava/io/IOException;",
            "Ll9/m;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>(Led/h0;Lh/d;)V
    .locals 0

    invoke-direct {p0, p1}, Led/m;-><init>(Led/h0;)V

    iput-object p2, p0, Lh/e;->b:Lx9/l;

    return-void
.end method


# virtual methods
.method public final M(Led/e;J)V
    .locals 1

    iget-boolean v0, p0, Lh/e;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Led/e;->skip(J)V

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Led/m;->M(Led/e;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lh/e;->c:Z

    iget-object p2, p0, Lh/e;->b:Lx9/l;

    invoke-interface {p2, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final close()V
    .locals 2

    :try_start_0
    invoke-super {p0}, Led/m;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lh/e;->c:Z

    iget-object v1, p0, Lh/e;->b:Lx9/l;

    invoke-interface {v1, v0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final flush()V
    .locals 2

    :try_start_0
    invoke-super {p0}, Led/m;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lh/e;->c:Z

    iget-object v1, p0, Lh/e;->b:Lx9/l;

    invoke-interface {v1, v0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
