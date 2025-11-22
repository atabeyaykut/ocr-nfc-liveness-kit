.class public final Lnc/o0$a;
.super Lnc/o0$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnc/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final d:Lnc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc/i<",
            "Ll9/m;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic e:Lnc/o0;


# direct methods
.method public constructor <init>(Lnc/o0;JLnc/j;)V
    .locals 0

    iput-object p1, p0, Lnc/o0$a;->e:Lnc/o0;

    invoke-direct {p0, p2, p3}, Lnc/o0$b;-><init>(J)V

    iput-object p4, p0, Lnc/o0$a;->d:Lnc/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-object v0, Ll9/m;->a:Ll9/m;

    iget-object v1, p0, Lnc/o0$a;->d:Lnc/i;

    iget-object v2, p0, Lnc/o0$a;->e:Lnc/o0;

    invoke-interface {v1, v2, v0}, Lnc/i;->j(Lnc/y;Ll9/m;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Lnc/o0$b;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnc/o0$a;->d:Lnc/i;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
