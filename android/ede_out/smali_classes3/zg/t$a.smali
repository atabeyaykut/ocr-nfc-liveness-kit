.class public final Lzg/t$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzg/t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/p<",
        "Lzg/k;",
        "Lr0/b<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;",
        ">;>;",
        "Lzg/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lzg/t$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzg/t$a;

    invoke-direct {v0}, Lzg/t$a;-><init>()V

    sput-object v0, Lzg/t$a;->a:Lzg/t$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v3, p1

    .line 2
    .line 3
    check-cast v3, Lzg/k;

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    check-cast v2, Lr0/b;

    .line 8
    .line 9
    const-string v0, "$this$execute"

    .line 10
    .line 11
    invoke-static {v3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "result"

    .line 15
    .line 16
    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    :try_start_0
    invoke-virtual {v2}, Lr0/b;->a()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;->getOrThrow()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v0, v1

    .line 36
    :goto_0
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x0

    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v9, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v11, 0x0

    .line 46
    const/4 v12, 0x0

    .line 47
    const/4 v13, 0x0

    .line 48
    const/4 v14, 0x0

    .line 49
    const/4 v15, 0x0

    .line 50
    const/16 v16, 0x0

    .line 51
    .line 52
    const/16 v17, 0x7ffc

    .line 53
    .line 54
    const/16 v18, 0x0

    .line 55
    .line 56
    move-object v1, v3

    .line 57
    move-object/from16 v19, v3

    .line 58
    .line 59
    move-object v3, v0

    .line 60
    :try_start_1
    invoke-static/range {v1 .. v18}, Lzg/k;->copy$default(Lzg/k;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationHostRequestModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationGuestRequestModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadMediaModel;Lzg/a;ILjava/lang/Object;)Lzg/k;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    move-object/from16 v19, v3

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    const/4 v4, 0x0

    .line 69
    const/4 v5, 0x0

    .line 70
    const/4 v6, 0x0

    .line 71
    const/4 v7, 0x0

    .line 72
    const/4 v8, 0x0

    .line 73
    const/4 v9, 0x0

    .line 74
    const/4 v10, 0x0

    .line 75
    const/4 v11, 0x0

    .line 76
    const/4 v12, 0x0

    .line 77
    const/4 v13, 0x0

    .line 78
    const/4 v14, 0x0

    .line 79
    const/4 v15, 0x0

    .line 80
    const/16 v16, 0x0

    .line 81
    .line 82
    const/16 v17, 0x7ffe

    .line 83
    .line 84
    const/16 v18, 0x0

    .line 85
    .line 86
    move-object/from16 v1, v19

    .line 87
    .line 88
    invoke-static/range {v1 .. v18}, Lzg/k;->copy$default(Lzg/k;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationHostRequestModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationGuestRequestModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadMediaModel;Lzg/a;ILjava/lang/Object;)Lzg/k;

    .line 89
    .line 90
    .line 91
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    goto :goto_2

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    goto :goto_1

    .line 95
    :catchall_1
    move-exception v0

    .line 96
    move-object/from16 v19, v3

    .line 97
    .line 98
    :goto_1
    new-instance v1, Lr0/i;

    .line 99
    .line 100
    move-object v2, v1

    .line 101
    const/4 v3, 0x0

    .line 102
    invoke-direct {v1, v3, v0}, Lr0/i;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    const/4 v3, 0x0

    .line 106
    const/4 v4, 0x0

    .line 107
    const/4 v5, 0x0

    .line 108
    const/4 v6, 0x0

    .line 109
    const/4 v7, 0x0

    .line 110
    const/4 v8, 0x0

    .line 111
    const/4 v9, 0x0

    .line 112
    const/4 v10, 0x0

    .line 113
    const/4 v11, 0x0

    .line 114
    const/4 v12, 0x0

    .line 115
    const/4 v13, 0x0

    .line 116
    const/4 v14, 0x0

    .line 117
    const/4 v15, 0x0

    .line 118
    const/16 v16, 0x0

    .line 119
    .line 120
    const/16 v17, 0x7ffe

    .line 121
    .line 122
    const/16 v18, 0x0

    .line 123
    .line 124
    move-object/from16 v1, v19

    .line 125
    .line 126
    invoke-static/range {v1 .. v18}, Lzg/k;->copy$default(Lzg/k;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationHostRequestModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationGuestRequestModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadMediaModel;Lzg/a;ILjava/lang/Object;)Lzg/k;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    :goto_2
    return-object v0
.end method
