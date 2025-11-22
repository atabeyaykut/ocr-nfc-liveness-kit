.class public final La6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5/a$a;


# instance fields
.field public final synthetic a:La6/d;


# direct methods
.method public constructor <init>(La6/d;)V
    .locals 0

    iput-object p1, p0, La6/c;->a:La6/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, La6/c;->a:La6/d;

    .line 2
    .line 3
    iget-object p2, p1, La6/d;->a:Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-virtual {p2, p5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    sget-object p3, La6/b;->a:Ljava/util/HashSet;

    .line 18
    .line 19
    sget-object p3, La6/a;->e:[Ljava/lang/String;

    .line 20
    .line 21
    sget-object p4, La6/a;->c:[Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p3, p5, p4}, Lb8/f;->H0([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    move-object p5, p3

    .line 30
    :cond_1
    const-string p3, "events"

    .line 31
    .line 32
    invoke-virtual {p2, p3, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 p3, 0x2

    .line 36
    iget-object p1, p1, La6/d;->b:Lz5/a$a;

    .line 37
    .line 38
    check-cast p1, Ld6/b;

    .line 39
    .line 40
    invoke-virtual {p1, p3, p2}, Ld6/b;->a(ILandroid/os/Bundle;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
