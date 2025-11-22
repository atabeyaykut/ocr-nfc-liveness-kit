.class public final Lkc/b$e;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/q<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkc/b$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkc/b$e;

    invoke-direct {v0}, Lkc/b$e;-><init>()V

    sput-object v0, Lkc/b$e;->a:Lkc/b$e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
