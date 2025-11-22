.class public final Lb3/b;
.super Lb3/j;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Lu2/s;

.field public final c:Lu2/n;


# direct methods
.method public constructor <init>(JLu2/s;Lu2/n;)V
    .locals 0

    invoke-direct {p0}, Lb3/j;-><init>()V

    iput-wide p1, p0, Lb3/b;->a:J

    if-eqz p3, :cond_1

    iput-object p3, p0, Lb3/b;->b:Lu2/s;

    if-eqz p4, :cond_0

    iput-object p4, p0, Lb3/b;->c:Lu2/n;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null event"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null transportContext"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lu2/n;
    .locals 1

    iget-object v0, p0, Lb3/b;->c:Lu2/n;

    return-object v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lb3/b;->a:J

    return-wide v0
.end method

.method public final c()Lu2/s;
    .locals 1

    iget-object v0, p0, Lb3/b;->b:Lu2/s;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lb3/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lb3/j;

    invoke-virtual {p1}, Lb3/j;->b()J

    move-result-wide v3

    iget-wide v5, p0, Lb3/b;->a:J

    cmp-long v1, v5, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lb3/b;->b:Lu2/s;

    invoke-virtual {p1}, Lb3/j;->c()Lu2/s;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb3/b;->c:Lu2/n;

    invoke-virtual {p1}, Lb3/j;->a()Lu2/n;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    .locals 5

    const/16 v0, 0x20

    iget-wide v1, p0, Lb3/b;->a:J

    ushr-long v3, v1, v0

    xor-long v0, v3, v1

    long-to-int v1, v0

    const v0, 0xf4243

    xor-int/2addr v1, v0

    mul-int v1, v1, v0

    iget-object v2, p0, Lb3/b;->b:Lu2/s;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    iget-object v0, p0, Lb3/b;->c:Lu2/n;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PersistedEvent{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lb3/b;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", transportContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb3/b;->b:Lu2/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb3/b;->c:Lu2/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
