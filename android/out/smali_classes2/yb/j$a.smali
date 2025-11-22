.class public final Lyb/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyb/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Llb/b;

.field public final b:Lyb/h;


# direct methods
.method public constructor <init>(Llb/b;Lyb/h;)V
    .locals 1

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyb/j$a;->a:Llb/b;

    iput-object p2, p0, Lyb/j$a;->b:Lyb/h;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lyb/j$a;

    if-eqz v0, :cond_0

    check-cast p1, Lyb/j$a;

    iget-object p1, p1, Lyb/j$a;->a:Llb/b;

    iget-object v0, p0, Lyb/j$a;->a:Llb/b;

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

    iget-object v0, p0, Lyb/j$a;->a:Llb/b;

    invoke-virtual {v0}, Llb/b;->hashCode()I

    move-result v0

    return v0
.end method
