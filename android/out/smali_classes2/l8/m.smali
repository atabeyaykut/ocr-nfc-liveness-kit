.class public final Ll8/m;
.super Ll8/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll8/p<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll8/p;


# direct methods
.method public constructor <init>(Ll8/p;)V
    .locals 0

    iput-object p1, p0, Ll8/m;->a:Ll8/p;

    invoke-direct {p0}, Ll8/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ll8/u;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll8/u;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ll8/u;->k()Ll8/u$b;

    move-result-object v0

    sget-object v1, Ll8/u$b;->j:Ll8/u$b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ll8/u;->i()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Ll8/m;->a:Ll8/p;

    invoke-virtual {v0, p1}, Ll8/p;->a(Ll8/u;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ll8/y;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll8/y;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ll8/y;->g()Ll8/y;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ll8/m;->a:Ll8/p;

    invoke-virtual {v0, p1, p2}, Ll8/p;->c(Ll8/y;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ll8/m;->a:Ll8/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".nullSafe()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
