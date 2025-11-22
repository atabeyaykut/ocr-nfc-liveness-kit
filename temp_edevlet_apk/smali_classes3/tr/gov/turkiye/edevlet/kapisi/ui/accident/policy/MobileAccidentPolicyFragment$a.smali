.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Luh/c;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment$a;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment$a;-><init>()V

    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Luh/c;

    .line 2
    .line 3
    const-string v0, "state"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Luh/c;->a:Lr0/b;

    .line 9
    .line 10
    instance-of v0, p1, Lr0/d1;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    instance-of v0, p1, Lr0/k;

    .line 17
    .line 18
    :goto_0
    if-nez v0, :cond_2

    .line 19
    .line 20
    instance-of v0, p1, Lr0/c1;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    .line 29
    const-string v1, "Success"

    .line 30
    .line 31
    invoke-virtual {p1, v1, v0}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    instance-of p1, p1, Lr0/i;

    .line 36
    .line 37
    :cond_2
    :goto_1
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 38
    .line 39
    return-object p1
.end method
