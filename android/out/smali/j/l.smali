.class public final Lj/l;
.super Lj/g;
.source "SourceFile"


# instance fields
.field public final a:Lg/l;

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>(Lg/l;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj/g;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj/l;->a:Lg/l;

    .line 5
    .line 6
    iput-object p2, p0, Lj/l;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lj/l;->c:I

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
    instance-of v1, p1, Lj/l;

    if-eqz v1, :cond_1

    check-cast p1, Lj/l;

    iget-object v1, p1, Lj/l;->a:Lg/l;

    iget-object v2, p0, Lj/l;->a:Lg/l;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj/l;->b:Ljava/lang/String;

    iget-object v2, p1, Lj/l;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lj/l;->c:I

    iget p1, p1, Lj/l;->c:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lj/l;->a:Lg/l;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lj/l;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lj/l;->c:I

    invoke-static {v1}, Lg/d;->c(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
