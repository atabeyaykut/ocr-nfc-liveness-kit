.class public final Lya/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lya/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lya/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lya/j$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lya/j$a;

    invoke-direct {v0}, Lya/j$a;-><init>()V

    sput-object v0, Lya/j$a;->a:Lya/j$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcb/x;)Lma/w0;
    .locals 1

    const-string v0, "javaTypeParameter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
