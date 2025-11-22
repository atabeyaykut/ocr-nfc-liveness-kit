.class public final Lza/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lza/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Llb/f;

.field public final b:Lcb/g;


# direct methods
.method public constructor <init>(Llb/f;Lcb/g;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lza/n$a;->a:Llb/f;

    iput-object p2, p0, Lza/n$a;->b:Lcb/g;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lza/n$a;

    if-eqz v0, :cond_0

    check-cast p1, Lza/n$a;

    iget-object p1, p1, Lza/n$a;->a:Llb/f;

    iget-object v0, p0, Lza/n$a;->a:Llb/f;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lza/n$a;->a:Llb/f;

    invoke-virtual {v0}, Llb/f;->hashCode()I

    move-result v0

    return v0
.end method
