.class public Lnc/e1;
.super Lnc/g1;
.source "SourceFile"

# interfaces
.implements Lnc/p;


# instance fields
.field public final b:Z


# direct methods
.method public constructor <init>(Lnc/b1;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lnc/g1;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lnc/g1;->V(Lnc/b1;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lnc/g1;->R()Lnc/m;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    instance-of v1, p1, Lnc/n;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast p1, Lnc/n;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object p1, v2

    .line 21
    :goto_0
    if-nez p1, :cond_1

    .line 22
    .line 23
    move-object p1, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p1}, Lnc/f1;->K()Lnc/g1;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_1
    if-nez p1, :cond_2

    .line 30
    .line 31
    goto :goto_4

    .line 32
    :cond_2
    invoke-virtual {p1}, Lnc/g1;->O()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    goto :goto_5

    .line 39
    :cond_3
    invoke-virtual {p1}, Lnc/g1;->R()Lnc/m;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    instance-of v1, p1, Lnc/n;

    .line 44
    .line 45
    if-eqz v1, :cond_4

    .line 46
    .line 47
    check-cast p1, Lnc/n;

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_4
    move-object p1, v2

    .line 51
    :goto_2
    if-nez p1, :cond_5

    .line 52
    .line 53
    move-object p1, v2

    .line 54
    goto :goto_3

    .line 55
    :cond_5
    invoke-virtual {p1}, Lnc/f1;->K()Lnc/g1;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :goto_3
    if-nez p1, :cond_2

    .line 60
    .line 61
    :goto_4
    const/4 v0, 0x0

    .line 62
    :goto_5
    iput-boolean v0, p0, Lnc/e1;->b:Z

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final O()Z
    .locals 1

    iget-boolean v0, p0, Lnc/e1;->b:Z

    return v0
.end method

.method public final P()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
