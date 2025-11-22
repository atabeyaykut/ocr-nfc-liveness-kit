.class public final Lu2/i;
.super Lu2/r;
.source "SourceFile"


# instance fields
.field public final a:Lu2/s;

.field public final b:Ljava/lang/String;

.field public final c:Lr2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr2/c<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Lr2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr2/e<",
            "*[B>;"
        }
    .end annotation
.end field

.field public final e:Lr2/b;


# direct methods
.method public constructor <init>(Lu2/s;Ljava/lang/String;Lr2/c;Lr2/e;Lr2/b;)V
    .locals 0

    invoke-direct {p0}, Lu2/r;-><init>()V

    iput-object p1, p0, Lu2/i;->a:Lu2/s;

    iput-object p2, p0, Lu2/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lu2/i;->c:Lr2/c;

    iput-object p4, p0, Lu2/i;->d:Lr2/e;

    iput-object p5, p0, Lu2/i;->e:Lr2/b;

    return-void
.end method


# virtual methods
.method public final a()Lr2/b;
    .locals 1

    iget-object v0, p0, Lu2/i;->e:Lr2/b;

    return-object v0
.end method

.method public final b()Lr2/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr2/c<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lu2/i;->c:Lr2/c;

    return-object v0
.end method

.method public final c()Lr2/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr2/e<",
            "*[B>;"
        }
    .end annotation

    iget-object v0, p0, Lu2/i;->d:Lr2/e;

    return-object v0
.end method

.method public final d()Lu2/s;
    .locals 1

    iget-object v0, p0, Lu2/i;->a:Lu2/s;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu2/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lu2/r;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lu2/r;

    invoke-virtual {p1}, Lu2/r;->d()Lu2/s;

    move-result-object v1

    iget-object v3, p0, Lu2/i;->a:Lu2/s;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lu2/i;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lu2/r;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lu2/i;->c:Lr2/c;

    invoke-virtual {p1}, Lu2/r;->b()Lr2/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lu2/i;->d:Lr2/e;

    invoke-virtual {p1}, Lu2/r;->c()Lr2/e;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lu2/i;->e:Lr2/b;

    invoke-virtual {p1}, Lu2/r;->a()Lr2/b;

    move-result-object p1

    invoke-virtual {v1, p1}, Lr2/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lu2/i;->a:Lu2/s;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget-object v2, p0, Lu2/i;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Lu2/i;->c:Lr2/c;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Lu2/i;->d:Lr2/e;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v1, p0, Lu2/i;->e:Lr2/b;

    invoke-virtual {v1}, Lr2/b;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SendRequest{transportContext="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lu2/i;->a:Lu2/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transportName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu2/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu2/i;->c:Lr2/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu2/i;->d:Lr2/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", encoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu2/i;->e:Lr2/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
