.class public final Lp/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnc/y;

.field public final b:Lnc/y;

.field public final c:Lnc/y;

.field public final d:Lnc/y;

.field public final e:Lt/c$a;

.field public final f:I

.field public final g:Landroid/graphics/Bitmap$Config;

.field public final h:Z

.field public final i:Z

.field public final j:Landroid/graphics/drawable/Drawable;

.field public final k:Landroid/graphics/drawable/Drawable;

.field public final l:Landroid/graphics/drawable/Drawable;

.field public final m:I

.field public final n:I

.field public final o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lp/a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    sget-object p1, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 1
    sget-object p1, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 2
    invoke-virtual {p1}, Lnc/k1;->d()Lnc/k1;

    move-result-object p1

    .line 3
    sget-object v0, Lnc/j0;->b:Lkotlinx/coroutines/scheduling/b;

    .line 4
    sget-object v1, Lt/c$a;->a:Lt/b$a;

    .line 5
    sget-object v2, Lu/c;->b:Landroid/graphics/Bitmap$Config;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/a;->a:Lnc/y;

    iput-object v0, p0, Lp/a;->b:Lnc/y;

    iput-object v0, p0, Lp/a;->c:Lnc/y;

    iput-object v0, p0, Lp/a;->d:Lnc/y;

    iput-object v1, p0, Lp/a;->e:Lt/c$a;

    const/4 p1, 0x3

    iput p1, p0, Lp/a;->f:I

    iput-object v2, p0, Lp/a;->g:Landroid/graphics/Bitmap$Config;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lp/a;->h:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lp/a;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lp/a;->j:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lp/a;->k:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lp/a;->l:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lp/a;->m:I

    iput p1, p0, Lp/a;->n:I

    iput p1, p0, Lp/a;->o:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lp/a;

    if-eqz v1, :cond_1

    check-cast p1, Lp/a;

    iget-object v1, p1, Lp/a;->a:Lnc/y;

    iget-object v2, p0, Lp/a;->a:Lnc/y;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lp/a;->b:Lnc/y;

    iget-object v2, p1, Lp/a;->b:Lnc/y;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lp/a;->c:Lnc/y;

    iget-object v2, p1, Lp/a;->c:Lnc/y;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lp/a;->d:Lnc/y;

    iget-object v2, p1, Lp/a;->d:Lnc/y;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lp/a;->e:Lt/c$a;

    iget-object v2, p1, Lp/a;->e:Lt/c$a;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lp/a;->f:I

    iget v2, p1, Lp/a;->f:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lp/a;->g:Landroid/graphics/Bitmap$Config;

    iget-object v2, p1, Lp/a;->g:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lp/a;->h:Z

    iget-boolean v2, p1, Lp/a;->h:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lp/a;->i:Z

    iget-boolean v2, p1, Lp/a;->i:Z

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lp/a;->j:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lp/a;->j:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lp/a;->k:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lp/a;->k:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lp/a;->l:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lp/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lp/a;->m:I

    iget v2, p1, Lp/a;->m:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lp/a;->n:I

    iget v2, p1, Lp/a;->n:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lp/a;->o:I

    iget p1, p1, Lp/a;->o:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lp/a;->a:Lnc/y;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lp/a;->b:Lnc/y;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lp/a;->c:Lnc/y;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lp/a;->d:Lnc/y;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lp/a;->e:Lt/c$a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lp/a;->f:I

    invoke-static {v1}, Lg/d;->c(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lp/a;->g:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lp/a;->h:Z

    const/16 v2, 0x4d5

    const/16 v3, 0x4cf

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lp/a;->i:Z

    if-eqz v1, :cond_1

    const/16 v2, 0x4cf

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lp/a;->j:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lp/a;->k:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lp/a;->l:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lp/a;->m:I

    invoke-static {v1}, Lg/d;->c(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lp/a;->n:I

    invoke-static {v0}, Lg/d;->c(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lp/a;->o:I

    invoke-static {v1}, Lg/d;->c(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
