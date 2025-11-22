.class public final Lyc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Led/h;

.field public static final e:Led/h;

.field public static final f:Led/h;

.field public static final g:Led/h;

.field public static final h:Led/h;

.field public static final i:Led/h;


# instance fields
.field public final a:I

.field public final b:Led/h;

.field public final c:Led/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Led/h;->d:Led/h;

    const-string v0, ":"

    invoke-static {v0}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    move-result-object v0

    sput-object v0, Lyc/c;->d:Led/h;

    const-string v0, ":status"

    invoke-static {v0}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    move-result-object v0

    sput-object v0, Lyc/c;->e:Led/h;

    const-string v0, ":method"

    invoke-static {v0}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    move-result-object v0

    sput-object v0, Lyc/c;->f:Led/h;

    const-string v0, ":path"

    invoke-static {v0}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    move-result-object v0

    sput-object v0, Lyc/c;->g:Led/h;

    const-string v0, ":scheme"

    invoke-static {v0}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    move-result-object v0

    sput-object v0, Lyc/c;->h:Led/h;

    const-string v0, ":authority"

    invoke-static {v0}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    move-result-object v0

    sput-object v0, Lyc/c;->i:Led/h;

    return-void
.end method

.method public constructor <init>(Led/h;Led/h;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyc/c;->b:Led/h;

    iput-object p2, p0, Lyc/c;->c:Led/h;

    .line 1
    invoke-virtual {p1}, Led/h;->r()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Led/h;->r()I

    move-result p2

    add-int/2addr p2, p1

    .line 2
    iput p2, p0, Lyc/c;->a:I

    return-void
.end method

.method public constructor <init>(Led/h;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Led/h;->d:Led/h;

    invoke-static {p2}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lyc/c;-><init>(Led/h;Led/h;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Led/h;->d:Led/h;

    invoke-static {p1}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    move-result-object p1

    invoke-static {p2}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lyc/c;-><init>(Led/h;Led/h;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lyc/c;

    if-eqz v0, :cond_0

    check-cast p1, Lyc/c;

    iget-object v0, p1, Lyc/c;->b:Led/h;

    iget-object v1, p0, Lyc/c;->b:Led/h;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyc/c;->c:Led/h;

    iget-object p1, p1, Lyc/c;->c:Led/h;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lyc/c;->b:Led/h;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Led/h;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lyc/c;->c:Led/h;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Led/h;->hashCode()I

    move-result v0

    :cond_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lyc/c;->b:Led/h;

    invoke-virtual {v1}, Led/h;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lyc/c;->c:Led/h;

    invoke-virtual {v1}, Led/h;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
