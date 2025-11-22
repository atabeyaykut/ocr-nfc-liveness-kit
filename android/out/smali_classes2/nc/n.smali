.class public final Lnc/n;
.super Lnc/d1;
.source "SourceFile"

# interfaces
.implements Lnc/m;


# instance fields
.field public final e:Lnc/o;


# direct methods
.method public constructor <init>(Lnc/g1;)V
    .locals 0

    invoke-direct {p0}, Lnc/d1;-><init>()V

    iput-object p1, p0, Lnc/n;->e:Lnc/o;

    return-void
.end method


# virtual methods
.method public final J(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lnc/f1;->K()Lnc/g1;

    move-result-object p1

    iget-object v0, p0, Lnc/n;->e:Lnc/o;

    invoke-interface {v0, p1}, Lnc/o;->e(Lnc/g1;)V

    return-void
.end method

.method public final getParent()Lnc/b1;
    .locals 1

    invoke-virtual {p0}, Lnc/f1;->K()Lnc/g1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lnc/n;->J(Ljava/lang/Throwable;)V

    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method

.method public final o(Ljava/lang/Throwable;)Z
    .locals 1

    invoke-virtual {p0}, Lnc/f1;->K()Lnc/g1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnc/g1;->K(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
