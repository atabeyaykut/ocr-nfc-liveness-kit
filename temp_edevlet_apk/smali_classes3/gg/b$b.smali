.class public final Lgg/b$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgg/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lfg/e;",
        "Lfg/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lgg/b$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgg/b$b;

    invoke-direct {v0}, Lgg/b$b;-><init>()V

    sput-object v0, Lgg/b$b;->a:Lgg/b$b;

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
    .locals 9

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lfg/e;

    .line 3
    .line 4
    const-string p1, "$this$setState"

    .line 5
    .line 6
    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lr0/k;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-direct {v1, p1}, Lr0/k;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    const/16 v7, 0x1e

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    invoke-static/range {v0 .. v8}, Lfg/e;->copy$default(Lfg/e;Lr0/b;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;ZILjava/lang/Object;)Lfg/e;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method
