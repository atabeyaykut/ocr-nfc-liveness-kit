.class public final Lyb/g0$b;
.super Lyb/g0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyb/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final d:Llb/c;


# direct methods
.method public constructor <init>(Llb/c;Lib/c;Lib/g;Lac/g;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4}, Lyb/g0;-><init>(Lib/c;Lib/g;Lma/r0;)V

    iput-object p1, p0, Lyb/g0$b;->d:Llb/c;

    return-void
.end method


# virtual methods
.method public final a()Llb/c;
    .locals 1

    iget-object v0, p0, Lyb/g0$b;->d:Llb/c;

    return-object v0
.end method
