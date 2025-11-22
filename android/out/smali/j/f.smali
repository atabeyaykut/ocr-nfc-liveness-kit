.class public final Lj/f;
.super Lj/g;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/drawable/Drawable;

.field public final b:Z

.field public final c:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj/g;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj/f;->a:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    iput-boolean p2, p0, Lj/f;->b:Z

    .line 7
    .line 8
    iput p3, p0, Lj/f;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj/f;

    if-eqz v1, :cond_1

    check-cast p1, Lj/f;

    iget-object v1, p1, Lj/f;->a:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lj/f;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lj/f;->b:Z

    iget-boolean v2, p1, Lj/f;->b:Z

    if-ne v1, v2, :cond_1

    iget v1, p0, Lj/f;->c:I

    iget p1, p1, Lj/f;->c:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lj/f;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lj/f;->b:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lj/f;->c:I

    invoke-static {v1}, Lg/d;->c(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
