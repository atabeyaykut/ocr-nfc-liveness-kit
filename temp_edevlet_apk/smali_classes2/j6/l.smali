.class public final Lj6/l;
.super Lj6/a0$e$d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj6/l$a;
    }
.end annotation


# instance fields
.field public final a:Lj6/a0$e$d$a$b;

.field public final b:Lj6/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj6/b0<",
            "Lj6/a0$c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lj6/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj6/b0<",
            "Lj6/a0$c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Boolean;

.field public final e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lj6/a0$e$d$a$b;Lj6/b0;Lj6/b0;Ljava/lang/Boolean;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj6/a0$e$d$a;-><init>()V

    iput-object p1, p0, Lj6/l;->a:Lj6/a0$e$d$a$b;

    iput-object p2, p0, Lj6/l;->b:Lj6/b0;

    iput-object p3, p0, Lj6/l;->c:Lj6/b0;

    iput-object p4, p0, Lj6/l;->d:Ljava/lang/Boolean;

    iput p5, p0, Lj6/l;->e:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lj6/l;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final b()Lj6/b0;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj6/b0<",
            "Lj6/a0$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lj6/l;->b:Lj6/b0;

    return-object v0
.end method

.method public final c()Lj6/a0$e$d$a$b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lj6/l;->a:Lj6/a0$e$d$a$b;

    return-object v0
.end method

.method public final d()Lj6/b0;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj6/b0<",
            "Lj6/a0$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lj6/l;->c:Lj6/b0;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lj6/l;->e:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj6/a0$e$d$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Lj6/a0$e$d$a;

    invoke-virtual {p1}, Lj6/a0$e$d$a;->c()Lj6/a0$e$d$a$b;

    move-result-object v1

    iget-object v3, p0, Lj6/l;->a:Lj6/a0$e$d$a$b;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lj6/l;->b:Lj6/b0;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lj6/a0$e$d$a;->b()Lj6/b0;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lj6/a0$e$d$a;->b()Lj6/b0;

    move-result-object v3

    invoke-virtual {v1, v3}, Lj6/b0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, p0, Lj6/l;->c:Lj6/b0;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lj6/a0$e$d$a;->d()Lj6/b0;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lj6/a0$e$d$a;->d()Lj6/b0;

    move-result-object v3

    invoke-virtual {v1, v3}, Lj6/b0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget-object v1, p0, Lj6/l;->d:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lj6/a0$e$d$a;->a()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lj6/a0$e$d$a;->a()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    iget v1, p0, Lj6/l;->e:I

    invoke-virtual {p1}, Lj6/a0$e$d$a;->e()I

    move-result p1

    if-ne v1, p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_5
    return v2
.end method

.method public final f()Lj6/l$a;
    .locals 1

    new-instance v0, Lj6/l$a;

    invoke-direct {v0, p0}, Lj6/l$a;-><init>(Lj6/a0$e$d$a;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lj6/l;->a:Lj6/a0$e$d$a$b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lj6/l;->b:Lj6/b0;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lj6/b0;->hashCode()I

    move-result v3

    :goto_0
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    iget-object v3, p0, Lj6/l;->c:Lj6/b0;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lj6/b0;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    iget-object v3, p0, Lj6/l;->d:Ljava/lang/Boolean;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v1, p0, Lj6/l;->e:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Application{execution="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lj6/l;->a:Lj6/a0$e$d$a$b;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", customAttributes="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lj6/l;->b:Lj6/b0;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", internalKeys="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lj6/l;->c:Lj6/b0;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", background="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lj6/l;->d:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", uiOrientation="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lj6/l;->e:I

    .line 49
    .line 50
    const-string v2, "}"

    .line 51
    .line 52
    invoke-static {v0, v1, v2}, Landroidx/browser/browseractions/a;->b(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method
