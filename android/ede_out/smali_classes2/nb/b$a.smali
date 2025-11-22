.class public final Lnb/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnb/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lnb/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnb/b$a;

    invoke-direct {v0}, Lnb/b$a;-><init>()V

    sput-object v0, Lnb/b$a;->a:Lnb/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lma/g;Lnb/c;)Ljava/lang/String;
    .locals 1

    const-string v0, "renderer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lma/w0;

    if-eqz v0, :cond_0

    check-cast p1, Lma/w0;

    invoke-interface {p1}, Lma/j;->getName()Llb/f;

    move-result-object p1

    const-string v0, "classifier.name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lnb/c;->t(Llb/f;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lob/i;->g(Lma/j;)Llb/d;

    move-result-object p1

    const-string v0, "getFqName(classifier)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lnb/c;->s(Llb/d;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
