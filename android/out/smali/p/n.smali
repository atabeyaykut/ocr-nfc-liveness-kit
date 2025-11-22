.class public final Lp/n;
.super Lp/h;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/drawable/Drawable;

.field public final b:Lp/g;

.field public final c:I

.field public final d:Ln/b$a;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lp/g;ILn/b$a;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp/h;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp/n;->a:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    iput-object p2, p0, Lp/n;->b:Lp/g;

    .line 7
    .line 8
    iput p3, p0, Lp/n;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lp/n;->d:Ln/b$a;

    .line 11
    .line 12
    iput-object p5, p0, Lp/n;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-boolean p6, p0, Lp/n;->f:Z

    .line 15
    .line 16
    iput-boolean p7, p0, Lp/n;->g:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lp/n;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final b()Lp/g;
    .locals 1

    iget-object v0, p0, Lp/n;->b:Lp/g;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lp/n;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p1, Lp/n;

    .line 10
    .line 11
    iget-object v1, p1, Lp/n;->a:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    iget-object v2, p0, Lp/n;->a:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p1, Lp/n;->b:Lp/g;

    .line 22
    .line 23
    iget-object v2, p0, Lp/n;->b:Lp/g;

    .line 24
    .line 25
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget v1, p0, Lp/n;->c:I

    .line 32
    .line 33
    iget v2, p1, Lp/n;->c:I

    .line 34
    .line 35
    if-ne v1, v2, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Lp/n;->d:Ln/b$a;

    .line 38
    .line 39
    iget-object v2, p1, Lp/n;->d:Ln/b$a;

    .line 40
    .line 41
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Lp/n;->e:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v2, p1, Lp/n;->e:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    iget-boolean v1, p0, Lp/n;->f:Z

    .line 58
    .line 59
    iget-boolean v2, p1, Lp/n;->f:Z

    .line 60
    .line 61
    if-ne v1, v2, :cond_1

    .line 62
    .line 63
    iget-boolean v1, p0, Lp/n;->g:Z

    .line 64
    .line 65
    iget-boolean p1, p1, Lp/n;->g:Z

    .line 66
    .line 67
    if-ne v1, p1, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lp/n;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lp/n;->b:Lp/g;

    invoke-virtual {v1}, Lp/g;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lp/n;->c:I

    invoke-static {v0}, Lg/d;->c(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lp/n;->d:Ln/b$a;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ln/b$a;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lp/n;->e:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lp/n;->f:Z

    const/16 v2, 0x4d5

    const/16 v3, 0x4cf

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v1, 0x4d5

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lp/n;->g:Z

    if-eqz v1, :cond_3

    const/16 v2, 0x4cf

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method
