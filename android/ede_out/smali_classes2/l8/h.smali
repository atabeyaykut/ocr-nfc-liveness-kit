.class public abstract Ll8/h;
.super Ll8/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/util/Collection<",
        "TT;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ll8/p<",
        "TC;>;"
    }
.end annotation


# static fields
.field public static final b:Ll8/h$a;


# instance fields
.field public final a:Ll8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll8/p<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll8/h$a;

    invoke-direct {v0}, Ll8/h$a;-><init>()V

    sput-object v0, Ll8/h;->b:Ll8/h$a;

    return-void
.end method

.method public constructor <init>(Ll8/p;)V
    .locals 0

    invoke-direct {p0}, Ll8/p;-><init>()V

    iput-object p1, p0, Ll8/h;->a:Ll8/p;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ll8/u;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ll8/h;->d(Ll8/u;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ll8/y;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Ll8/h;->f(Ll8/y;Ljava/util/Collection;)V

    return-void
.end method

.method public final d(Ll8/u;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll8/u;",
            ")TC;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ll8/h;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1}, Ll8/u;->a()V

    :goto_0
    invoke-virtual {p1}, Ll8/u;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ll8/h;->a:Ll8/p;

    invoke-virtual {v1, p1}, Ll8/p;->a(Ll8/u;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ll8/u;->c()V

    return-object v0
.end method

.method public abstract e()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public final f(Ll8/y;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll8/y;",
            "TC;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ll8/y;->a()Ll8/y;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ll8/h;->a:Ll8/p;

    invoke-virtual {v1, p1, v0}, Ll8/p;->c(Ll8/y;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ll8/y;->d()Ll8/y;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ll8/h;->a:Ll8/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".collection()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
