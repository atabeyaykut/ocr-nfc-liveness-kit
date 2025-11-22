.class public final Lj6/m;
.super Lj6/a0$e$d$a$b;
.source "SourceFile"


# instance fields
.field public final a:Lj6/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj6/b0<",
            "Lj6/a0$e$d$a$b$d;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lj6/a0$e$d$a$b$b;

.field public final c:Lj6/a0$a;

.field public final d:Lj6/a0$e$d$a$b$c;

.field public final e:Lj6/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj6/b0<",
            "Lj6/a0$e$d$a$b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lj6/b0;Lj6/a0$e$d$a$b$b;Lj6/a0$a;Lj6/a0$e$d$a$b$c;Lj6/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj6/a0$e$d$a$b;-><init>()V

    iput-object p1, p0, Lj6/m;->a:Lj6/b0;

    iput-object p2, p0, Lj6/m;->b:Lj6/a0$e$d$a$b$b;

    iput-object p3, p0, Lj6/m;->c:Lj6/a0$a;

    iput-object p4, p0, Lj6/m;->d:Lj6/a0$e$d$a$b$c;

    iput-object p5, p0, Lj6/m;->e:Lj6/b0;

    return-void
.end method


# virtual methods
.method public final a()Lj6/a0$a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lj6/m;->c:Lj6/a0$a;

    return-object v0
.end method

.method public final b()Lj6/b0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj6/b0<",
            "Lj6/a0$e$d$a$b$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lj6/m;->e:Lj6/b0;

    return-object v0
.end method

.method public final c()Lj6/a0$e$d$a$b$b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lj6/m;->b:Lj6/a0$e$d$a$b$b;

    return-object v0
.end method

.method public final d()Lj6/a0$e$d$a$b$c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lj6/m;->d:Lj6/a0$e$d$a$b$c;

    return-object v0
.end method

.method public final e()Lj6/b0;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj6/b0<",
            "Lj6/a0$e$d$a$b$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lj6/m;->a:Lj6/b0;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj6/a0$e$d$a$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Lj6/a0$e$d$a$b;

    iget-object v1, p0, Lj6/m;->a:Lj6/b0;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lj6/a0$e$d$a$b;->e()Lj6/b0;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lj6/a0$e$d$a$b;->e()Lj6/b0;

    move-result-object v3

    invoke-virtual {v1, v3}, Lj6/b0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, p0, Lj6/m;->b:Lj6/a0$e$d$a$b$b;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lj6/a0$e$d$a$b;->c()Lj6/a0$e$d$a$b$b;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lj6/a0$e$d$a$b;->c()Lj6/a0$e$d$a$b$b;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget-object v1, p0, Lj6/m;->c:Lj6/a0$a;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lj6/a0$e$d$a$b;->a()Lj6/a0$a;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lj6/a0$e$d$a$b;->a()Lj6/a0$a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    invoke-virtual {p1}, Lj6/a0$e$d$a$b;->d()Lj6/a0$e$d$a$b$c;

    move-result-object v1

    iget-object v3, p0, Lj6/m;->d:Lj6/a0$e$d$a$b$c;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lj6/m;->e:Lj6/b0;

    invoke-virtual {p1}, Lj6/a0$e$d$a$b;->b()Lj6/b0;

    move-result-object p1

    invoke-virtual {v1, p1}, Lj6/b0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_5
    return v2
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lj6/m;->a:Lj6/b0;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lj6/b0;->hashCode()I

    move-result v1

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v1, v2

    mul-int v1, v1, v2

    iget-object v3, p0, Lj6/m;->b:Lj6/a0$e$d$a$b$b;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v1, v3

    mul-int v1, v1, v2

    iget-object v3, p0, Lj6/m;->c:Lj6/a0$a;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    xor-int/2addr v0, v1

    mul-int v0, v0, v2

    iget-object v1, p0, Lj6/m;->d:Lj6/a0$e$d$a$b$c;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int v0, v0, v2

    iget-object v1, p0, Lj6/m;->e:Lj6/b0;

    invoke-virtual {v1}, Lj6/b0;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Execution{threads="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lj6/m;->a:Lj6/b0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj6/m;->b:Lj6/a0$e$d$a$b$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appExitInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj6/m;->c:Lj6/a0$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj6/m;->d:Lj6/a0$e$d$a$b$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", binaries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj6/m;->e:Lj6/b0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
