.class public final Lm7/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj7/v;


# instance fields
.field public final synthetic a:Ljava/lang/Class;

.field public final synthetic b:Lj7/u;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lj7/u;)V
    .locals 0

    iput-object p1, p0, Lm7/p;->a:Ljava/lang/Class;

    iput-object p2, p0, Lm7/p;->b:Lj7/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lj7/h;Lp7/a;)Lj7/u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj7/h;",
            "Lp7/a<",
            "TT;>;)",
            "Lj7/u<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p2, Lp7/a;->a:Ljava/lang/Class;

    .line 2
    .line 3
    iget-object p2, p0, Lm7/p;->a:Ljava/lang/Class;

    .line 4
    .line 5
    if-ne p1, p2, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lm7/p;->b:Lj7/u;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Factory[type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lm7/p;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm7/p;->b:Lj7/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
