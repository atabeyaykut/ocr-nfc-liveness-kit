.class public final Lm7/s;
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

    iput-object p1, p0, Lm7/s;->a:Ljava/lang/Class;

    iput-object p2, p0, Lm7/s;->b:Lj7/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lj7/h;Lp7/a;)Lj7/u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lj7/h;",
            "Lp7/a<",
            "TT2;>;)",
            "Lj7/u<",
            "TT2;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p2, Lp7/a;->a:Ljava/lang/Class;

    .line 2
    .line 3
    iget-object p2, p0, Lm7/s;->a:Ljava/lang/Class;

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    new-instance p2, Lm7/s$a;

    .line 14
    .line 15
    invoke-direct {p2, p0, p1}, Lm7/s$a;-><init>(Lm7/s;Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    return-object p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Factory[typeHierarchy="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lm7/s;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm7/s;->b:Lj7/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
